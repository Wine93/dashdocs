cheatsheet do
  title 'Snippets'
  docset_file_name 'Snippets'
  keyword 'Snippets'
  introduction 'Code snippets for myself'

  category do
    id 'bash-cheatsheet'

    entry do
      name '**string**'
      notes <<-'END'
      ```bash
      # (1) convert to lowercase
      local a="Hello World"
      echo ${a,,} # hello world
      ```
      END
    end

    entry do
      name '**array**'
      notes <<-'END'
      ```bash
      local dirs=('download' 'pid' 'logs')
      for dir in ${dirs[*]}
      do
        echo $dir
      done
      ```
      END
    end

    entry do
      name '**dict**'
      notes <<-'END'
      ```bash
      declare -A dict=()

      dict["foo"]="bar"
      dict["hello"]="world"

      for key in ${!env[@]}
      do
        local value=${env[${key}]}
        echo "$key=$value"
      done
      ```
      END
    end

    entry do
      name '**eval**'
      notes <<-'END'
      ```bash
      local command="export \"key=value\""
      eval "$command"
      ```
      END
    end
  end

  category do
    id 'awk-cheatsheet'

    entry do
      name '**Array**'
      notes <<-'END'
      ```awk
      a[1] = 1
      a["foo"] = "bar"

      if ("foo" in a) {
          print a["foo"]  # bar
      }

      if (a["foo"]) {
          print a["foo"]  # bar
      }

      for (k in a) {
          print k " = " a[k]
      }
      # 1 = 1
      # foo = bar

      delete a["foo"]

      for (k in a) {
          print k " = " a[k]
      }
      # 1 = 1
      ```

      * `delete array[indx]`: delete an individual element
      * `delete array`: delete all of the elements in an array

      See also [awk manual 8](https://www.gnu.org/software/gawk/manual/gawk.html#Arrays)
      END
    end

    entry do
      name '**Built in functions**'
      notes <<-'END'
      ```awk
      // Numeric Functions
      print sqrt(4)  # 2
      print sqrt(5)  # 2.23607

      // int
      print int(3.14)  # 3
      print int(-3.14)  # -3

      // match
      if (match("hello, 1234", "([0-9])([0-9]+)", mu)) {
          print mu[0]  # 1234
          print mu[1]  # 1
          print mu[2]  # 234
      }
      ```

      Regexp:

      | Class | Meaning                                      |
      | ---   | ---                                          |
      | ^     | matches the beginning of a string            |
      | $     | matches only at the end of a string          |
      | .     | matches any single character                 |
      | \s    | matches any whitespace character             |
      | \S    | matches any character that is not whitespace |
      | [0-9] | matches any numeric character                |

      See also [awk manual 9.1](https://www.gnu.org/software/gawk/manual/gawk.html#Built_002din)
      END
    end

    entry do
      name '**User-Defined Functions**'
      notes <<-'END'
      ```awk
      function sum(a, b) {
          return a + b
      }

      BEGIN {
          print sum(1, 2)  # 3
      }
      ```

      See also [awk manual 9.2](https://www.gnu.org/software/gawk/manual/gawk.html#User_002ddefined).
      END
    end
  end

  category do
    id 'ngx-req-alloc-bt'

    entry do
      name '**The tool analyzes memory alloc backtrace for each request in specified nginx worker process**'
      notes <<-'END'
      ```bash
      #!/usr/bin/env bash
      # Copyright (C) Yuyang Chen (Wine93)

      ############################  GLOBAL VARIABLES
      pid=0
      dump_stap=0
      stap_args=''
      condition="pid() == target()"

      ############################  FUNCTIONS
      msg() {
          printf '%b' "$1" >&2
      }

      die() {
          msg "\33[31m[✘]\33[0m ${1}${2}"
          exit 1
      }

      gen_stap_src() {
          local exec_path="$1"

          cat << EOF
      global id
      global req
      global alloc
      global npools

      probe begin {
          warn(sprintf("Start tracing %d ($exec_path)...\n", target()))
      }

      probe process("$exec_path").function("ngx_http_create_request").return
      {
          if ($condition) {
              r = \$return
              pool = @cast(r, "ngx_http_request_t")->pool

              npools++
              id[pool] = npools
              alloc[npools] = 0
          }
      }

      probe process("$exec_path").function("ngx_palloc")
      {
          if ($condition) {
              pool = \$pool
              size = \$size

              pool_id = id[pool]
              if (pool_id) {
                  alloc[pool_id] += size

                  printf ("{ %d\n", pool_id)
                  print_ubacktrace()
                  printf ("\t%d\n", size)
                  printf ("}\n")
              }
          }
      }

      probe process("$exec_path").function("ngx_http_process_request_headers")
      {
          if ($condition) {
              rev = \$rev

              c = @cast(rev, "ngx_event_t")->data
              r = @cast(c, "ngx_connection_t")->data
              pool = @cast(r, "ngx_http_request_t")->pool

              pool_id = id[pool]
              if (pool_id) {
                  /* method */
                  method = &@cast(r, "ngx_http_request_t")->method_name
                  method_data = @cast(method, "ngx_str_t")->data
                  method_len = @cast(method, "ngx_str_t")->len
                  method_str = user_string_n(method_data, method_len)

                  /* uri */
                  uri = &@cast(r, "ngx_http_request_t")->uri
                  uri_data = @cast(uri, "ngx_str_t")->data
                  uri_len = @cast(uri, "ngx_str_t")->len
                  uri_str = user_string_n(uri_data, uri_len)

                  /* args */
                  args = &@cast(r, "ngx_http_request_t")->args
                  args_data = @cast(args, "ngx_str_t")->data
                  args_len = @cast(args, "ngx_str_t")->len

                  if (args_len == 0) {
                      uri_args = uri_str
                  } else {
                      args_str = user_string_n(args_data, args_len)
                      uri_args = sprintf("%s?%s", uri_str, args_str)
                  }

                  req[pool_id] = sprintf("%s %s", method_str, uri_args)
              }
          }
      }

      probe process("$exec_path").function("ngx_destroy_pool")
      {
          if ($condition) {
              pool = \$pool
              pool_id = id[pool]
              if (pool_id) {
                  delete id[pool]
              }
          }
      }

      probe end {
          for (i = 1; i <= npools; i++) {
              printf ("#%d %s %d\n", i, req[i], alloc[i])
          }
      }

      EOF
      }

      find_so() {
          local pid="$1"
          local maps_file="/proc/$pid/maps"

          awk '{
              REG_SO = "/(\\S+\\.so)(\\.\\S+)?$"
              if (match($NF, REG_SO, mu)) {
                  if (!so_files[mu[0]]) {
                      so_files[mu[0]] = 1
                  }
              }
          }
          END {
              for (key in so_files) {
                  if (d_so_args)
                      d_so_args = d_so_args " "
                  d_so_args = d_so_args "-d " key
              }
              print d_so_args
          }' $maps_file
      }

      get_options() {
          while getopts "a:dhp:" opts
          do
              case $opts in
                  a)
                      stap_args=$OPTARG
                      ;;
                  d)
                      dump_stap=1
                      ;;
                  h)
                      usage
                      exit 0
                      ;;
                  p)
                      pid=$OPTARG
                      ;;
                  \?)
                      usage
                      exit 1
                      ;;
              esac
          done
      }

      usage () {
          cat << _EOC_
      Usage:
          ngx-req-alloc-bt [options]

      Options:
          -a <args>           Pass extra arguments to the stap utility.
          -d                  Dump out the systemtap script source.
          -h                  Print this usage.
          -p <pid>            Specify the user process pid.
          -t <seconds>        Specify the number of seconds for sampling.

      Examples:
          ngx-req-alloc-bt -p 12345 -t 10
          ngx-req-alloc-bt -p 12345 -t 10 -a '-DMAXACTION=100000'
      _EOC_
      }

      main() {
          get_options "$@"

          if [ $pid -eq 0 ]; then
              die "No process pid specified by the -p option.\n";
          fi

          local exec_file="/proc/$pid/exe";
          if [ ! -f $exec_file ]; then
              die "Process $pid is not running or " \
                   "you do not have enough permissions.\n"
          fi

          local exec_path=`readlink $exec_file`
          local stap_src=`gen_stap_src $exec_path`
          if [ $dump_stap -eq  1 ]; then
              echo "$stap_src"
              exit 0
          fi

          local d_so_args=`find_so $pid`

          echo "$stap_src" \
              | stap -x $pid -d $exec_path --ldd $d_so_args "-DMAXMAPENTRIES=5000" "-DMAXACTION=100000" "-DMAXBACKTRACE=200" -
      }

      ############################  MAIN()
      main "$@"
      ```
      END
    end
  end

  category do
    id 'elastic.sh'
    entry do
      name '**A script to init and start elasticsearch**'
      notes <<-'END'
      ```bash
      #!/usr/bin/env bash
      # Copyright (C) Yuyang Chen (Wine93)

      ###########################  GLOBAL VARIABLES
      os=`uname -s`
      version="7.8.1"
      tarball="elasticsearch-${version}-${os,,}-x86_64.tar.gz"
      url="http://c.nmc.nasa.org:9301/downloads/$tarball"
      app="app/elasticsearch/elasticsearch-${version}"

      ###########################  BASE FUNCTIONS
      cwd()
      {
          cd `dirname $0`
      }

      create_dir()
      {
          local dirs=('download' 'app/elasticsearch' 'pid' 'logs' 'data')
          for dir in ${dirs[*]}
          do
              mkdir -p $dir
          done
      }

      download_bin()
      {
          local tarball="download/$tarball"
          if [ ! -f "$tarball" ]; then
              wget $url -O $tarball
              tar zxvf $tarball -C app/elasticsearch
          fi
      }

      set_env()
      {
          declare -A env=()

          env["ES_PATH_CONF"]="config"
          env["ES_PATH_DATA"]="data"
          env["ES_PATH_LOGS"]="logs"
          env["ES_NODE_NAME"]=$HOSTNAME
          env["ES_NETWORK_HOST"]=$HOSTNAME
          env["ES_SEED_HOST"]=$HOSTNAME

          for key in ${!env[@]}
          do
              local value=${env[${key}]}
              local command="export \"$key=$value\""
              echo $command && eval "$command"
          done
      }

      ############################  PHASE FUNCTIONS
      get_options()
      {
          return
      }

      init()
      {
          cwd
          create_dir
          download_bin
          set_env
      }

      run()
      {
          exec ${app}/bin/elasticsearch --pidfile "pid/elasticsearch.pid"
      }

      main() {
          get_options "$@"
          init
          run
      }

      ############################  MAIN
      main "$@"
      ```
      END
    end
  end

end

