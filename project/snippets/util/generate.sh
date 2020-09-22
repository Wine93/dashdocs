#!/usr/bin/env bash
# Copyright (C) Yuyang Chen (Wine93)

###########################  GLOBAL VARIABLES
declare -A src=()
declare -A note=()


###########################  BASE FUNCTIONS
config()
{
    src[""]=("Bash/ngx-req-alloc-bt")

    src["Bash/elastic.sh"]="Bash"
}

gen_dsl() {
cat << __EOF__
cheatsheet do
  title 'Snippets'
  docset_file_name 'Snippets'
  keyword 'Snippets'

  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'My *awesome* cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Windows'  # Must be unique and is used as title of the category

    entry do
      command 'CMD+N'         # Optional
      command 'CMD+SHIFT+N'   # Multiple commands are supported
      name 'Create window'    # A short name, can contain Markdown or HTML
      notes 'Some notes'      # Optional longer explanation, can contain Markdown or HTML
    end
    entry do
      command 'CMD+W'
      name 'Close window'
    end
  end

  category do
    id 'Code'
    entry do
      name 'Code sample'
      notes <<-'END'
        ```ruby
        sample = "You can include code snippets as well"
        ```
        Or anything else **Markdown** or HTML.
      END
    end
  end

  notes 'Some notes at the end of the cheat sheet'
end

__EOF
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





cat << EOF
cheatsheet do
  title 'Sample'               # Will be displayed by Dash in the docset list
  docset_file_name 'Sample'    # Used for the filename of the docset
  keyword 'sample'             # Used as the initial search keyword (listed in Preferences > Docsets)

  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'My *awesome* cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories



  category do
    id 'C'  # Must be unique and is used as title of the category

    entry do
      command 'align_memory.c'
      name 'Align memory (pointer address or size)'
      notes <<-'END'
\`\`\`C
$(cat align_memory.c)
\`\`\`
      END
    end
  end

  notes 'Some notes at the end of the cheat sheet'
end
EOF
