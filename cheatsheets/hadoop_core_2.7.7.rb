cheatsheet do
  title 'Hadoop Core 2.7.7'
  docset_file_name 'Hadoop_Core_2.7.7'
  keyword 'Hadoop'
  source_url 'cheat.kapeli.com'

  category do
    id 'core'
    entry do
      td_command 'hadoop.common.configuration.version'
      name 'version of this configuration file'
      td_notes '0.23.0'
    end
    entry do
      td_command 'hadoop.tmp.dir'
      name 'A base for other temporary directories.'
      td_notes '/tmp/hadoop-${user.name}'
    end
    entry do
      td_command 'io.native.lib.available'
      name 'Controls whether to use native libraries for bz2 and zlib compression codecs or not. The property does not control any other native libraries.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'hadoop.http.filter.initializers'
      name 'A comma separated list of class names. Each class in the list must extend org.apache.hadoop.http.FilterInitializer. The corresponding Filter will be initialized. Then, the Filter will be applied to all user facing jsp and servlet web pages. The ordering of the list defines the ordering of the filters.'
      td_notes 'org.apache.hadoop.http.lib.StaticUserWebFilter'
    end
    entry do
      td_command 'hadoop.security.authorization'
      name 'Is service-level authorization enabled?'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.security.instrumentation.requires.admin'
      name 'Indicates if administrator ACLs are required to access instrumentation servlets (JMX, METRICS, CONF, STACKS).'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.security.authentication'
      name 'Possible values are simple (no authentication), and kerberos'
      td_notes 'simple'
    end
    entry do
      td_command 'hadoop.security.group.mapping'
      name 'Class for user to group mapping (get groups for a given user) for ACL. The default implementation, org.apache.hadoop.security.JniBasedUnixGroupsMappingWithFallback, will determine if the Java Native Interface (JNI) is available. If JNI is available the implementation will use the API within hadoop to resolve a list of groups for a user. If JNI is not available then the shell implementation, ShellBasedUnixGroupsMapping, is used. This implementation shells out to the Linux/Unix environment with the bash -c groups command to resolve a list of groups for a user.'
      td_notes 'org.apache.hadoop.security.JniBasedUnixGroupsMappingWithFallback'
    end
    entry do
      td_command 'hadoop.security.groups.cache.secs'
      name 'This is the config controlling the validity of the entries in the cache containing the user->group mapping. When this duration has expired, then the implementation of the group mapping provider is invoked to get the groups of the user and then cached back.'
      td_notes '300'
    end
    entry do
      td_command 'hadoop.security.groups.negative-cache.secs'
      name 'Expiration time for entries in the the negative user-to-group mapping caching, in seconds. This is useful when invalid users are retrying frequently. It is suggested to set a small value for this expiration, since a transient error in group lookup could temporarily lock out a legitimate user. Set this to zero or negative value to disable negative user-to-group caching.'
      td_notes '30'
    end
    entry do
      td_command 'hadoop.security.groups.cache.warn.after.ms'
      name 'If looking up a single user to group takes longer than this amount of milliseconds, we will log a warning message.'
      td_notes '5000'
    end
    entry do
      td_command 'hadoop.security.groups.cache.background.reload'
      name 'Whether to reload expired user->group mappings using a background thread pool. If set to true, a pool of hadoop.security.groups.cache.background.reload.threads is created to update the cache in the background.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.security.groups.cache.background.reload.threads'
      name 'Only relevant if hadoop.security.groups.cache.background.reload is true. Controls the number of concurrent background user->group cache entry refreshes. Pending refresh requests beyond this value are queued and processed when a thread is free.'
      td_notes '3'
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.connection.timeout.ms'
      name 'This property is the connection timeout (in milliseconds) for LDAP operations. If the LDAP provider doesn\'t establish a connection within the specified period, it will abort the connect attempt. Non-positive value means no LDAP connection timeout is specified in which case it waits for the connection to establish until the underlying network times out.'
      td_notes '60000'
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.read.timeout.ms'
      name 'This property is the read timeout (in milliseconds) for LDAP operations. If the LDAP provider doesn\'t get a LDAP response within the specified period, it will abort the read attempt. Non-positive value means no read timeout is specified in which case it waits for the response infinitely.'
      td_notes '60000'
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.url'
      name 'The URL of the LDAP server to use for resolving user groups when using the LdapGroupsMapping user to group mapping.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.ssl'
      name 'Whether or not to use SSL when connecting to the LDAP server.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.ssl.keystore'
      name 'File path to the SSL keystore that contains the SSL certificate required by the LDAP server.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.ssl.keystore.password.file'
      name 'The path to a file containing the password of the LDAP SSL keystore. IMPORTANT: This file should be readable only by the Unix user running the daemons.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.ssl.truststore'
      name 'File path to the SSL truststore that contains the root certificate used to sign the LDAP server\'s certificate. Specify this if the LDAP server\'s certificate is not signed by a well known certificate authority.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.ssl.truststore.password.file'
      name 'The path to a file containing the password of the LDAP SSL truststore. IMPORTANT: This file should be readable only by the Unix user running the daemons.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.bind.user'
      name 'The distinguished name of the user to bind as when connecting to the LDAP server. This may be left blank if the LDAP server supports anonymous binds.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.bind.password.file'
      name 'The path to a file containing the password of the bind user. IMPORTANT: This file should be readable only by the Unix user running the daemons.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.base'
      name 'The search base for the LDAP connection. This is a distinguished name, and will typically be the root of the LDAP directory.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.search.filter.user'
      name 'An additional filter to use when searching for LDAP users. The default will usually be appropriate for Active Directory installations. If connecting to an LDAP server with a non-AD schema, this should be replaced with (&(objectClass=inetOrgPerson)(uid={0}). {0} is a special string used to denote where the username fits into the filter. If the LDAP server supports posixGroups, Hadoop can enable the feature by setting the value of this property to "posixAccount" and the value of the hadoop.security.group.mapping.ldap.search.filter.group property to "posixGroup".'
      td_notes '(&(objectClass=user)(sAMAccountName={0}))'
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.search.filter.group'
      name 'An additional filter to use when searching for LDAP groups. This should be changed when resolving groups against a non-Active Directory installation. See the description of hadoop.security.group.mapping.ldap.search.filter.user to enable posixGroups support.'
      td_notes '(objectClass=group)'
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.search.attr.member'
      name 'The attribute of the group object that identifies the users that are members of the group. The default will usually be appropriate for any LDAP installation.'
      td_notes 'member'
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.search.attr.group.name'
      name 'The attribute of the group object that identifies the group name. The default will usually be appropriate for all LDAP systems.'
      td_notes 'cn'
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.posix.attr.uid.name'
      name 'The attribute of posixAccount to use when groups for membership. Mostly useful for schemas wherein groups have memberUids that use an attribute other than uidNumber.'
      td_notes 'uidNumber'
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.posix.attr.gid.name'
      name 'The attribute of posixAccount indicating the group id.'
      td_notes 'gidNumber'
    end
    entry do
      td_command 'hadoop.security.group.mapping.ldap.directory.search.timeout'
      name 'The attribute applied to the LDAP SearchControl properties to set a maximum time limit when searching and awaiting a result. Set to 0 if infinite wait period is desired. Default is 10 seconds. Units in milliseconds.'
      td_notes '10000'
    end
    entry do
      td_command 'hadoop.security.service.user.name.key'
      name 'For those cases where the same RPC protocol is implemented by multiple servers, this configuration is required for specifying the principal name to use for the service when the client wishes to make an RPC call.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.uid.cache.secs'
      name 'This is the config controlling the validity of the entries in the cache containing the userId to userName and groupId to groupName used by NativeIO getFstat().'
      td_notes '14400'
    end
    entry do
      td_command 'hadoop.rpc.protection'
      name 'A comma-separated list of protection values for secured sasl connections. Possible values are authentication, integrity and privacy. authentication means authentication only and no integrity or privacy; integrity implies authentication and integrity are enabled; and privacy implies all of authentication, integrity and privacy are enabled. hadoop.security.saslproperties.resolver.class can be used to override the hadoop.rpc.protection for a connection at the server side.'
      td_notes 'authentication'
    end
    entry do
      td_command 'hadoop.security.saslproperties.resolver.class'
      name 'SaslPropertiesResolver used to resolve the QOP used for a connection. If not specified, the full set of values specified in hadoop.rpc.protection is used while determining the QOP used for the connection. If a class is specified, then the QOP values returned by the class will be used while determining the QOP used for the connection.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.work.around.non.threadsafe.getpwuid'
      name 'Some operating systems or authentication modules are known to have broken implementations of getpwuid_r and getpwgid_r, such that these calls are not thread-safe. Symptoms of this problem include JVM crashes with a stack trace inside these functions. If your system exhibits this issue, enable this configuration parameter to include a lock around the calls as a workaround. An incomplete list of some systems known to have this issue is available at https://wiki.apache.org/hadoop/KnownBrokenPwuidImplementations'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.kerberos.kinit.command'
      name 'Used to periodically renew Kerberos credentials when provided to Hadoop. The default setting assumes that kinit is in the PATH of users running the Hadoop client. Change this to the absolute path to kinit if this is not the case.'
      td_notes 'kinit'
    end
    entry do
      td_command 'hadoop.security.auth_to_local'
      name 'Maps kerberos principals to local user names'
      td_notes ''
    end
    entry do
      td_command 'io.file.buffer.size'
      name 'The size of buffer for use in sequence files. The size of this buffer should probably be a multiple of hardware page size (4096 on Intel x86), and it determines how much data is buffered during read and write operations.'
      td_notes '4096'
    end
    entry do
      td_command 'io.bytes.per.checksum'
      name 'The number of bytes per checksum. Must not be larger than io.file.buffer.size.'
      td_notes '512'
    end
    entry do
      td_command 'io.skip.checksum.errors'
      name 'If true, when a checksum error is encountered while reading a sequence file, entries are skipped, instead of throwing an exception.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'io.compression.codecs'
      name 'A comma-separated list of the compression codec classes that can be used for compression/decompression. In addition to any classes specified with this property (which take precedence), codec classes on the classpath are discovered using a Java ServiceLoader.'
      td_notes ''
    end
    entry do
      td_command 'io.compression.codec.bzip2.library'
      name 'The native-code library to be used for compression and decompression by the bzip2 codec. This library could be specified either by by name or the full pathname. In the former case, the library is located by the dynamic linker, usually searching the directories specified in the environment variable LD_LIBRARY_PATH. The value of "system-native" indicates that the default system library should be used. To indicate that the algorithm should operate entirely in Java, specify "java-builtin".'
      td_notes 'system-native'
    end
    entry do
      td_command 'io.serializations'
      name 'A list of serialization classes that can be used for obtaining serializers and deserializers.'
      td_notes 'org.apache.hadoop.io.serializer.WritableSerialization,org.apache.hadoop.io.serializer.avro.AvroSpecificSerialization,org.apache.hadoop.io.serializer.avro.AvroReflectSerialization'
    end
    entry do
      td_command 'io.seqfile.local.dir'
      name 'The local directory where sequence file stores intermediate data files during merge. May be a comma-separated list of directories on different devices in order to spread disk i/o. Directories that do not exist are ignored.'
      td_notes '${hadoop.tmp.dir}/io/local'
    end
    entry do
      td_command 'io.map.index.skip'
      name 'Number of index entries to skip between each entry. Zero by default. Setting this to values larger than zero can facilitate opening large MapFiles using less memory.'
      td_notes '0'
    end
    entry do
      td_command 'io.map.index.interval'
      name 'MapFile consist of two files - data file (tuples) and index file (keys). For every io.map.index.interval records written in the data file, an entry (record-key, data-file-position) is written in the index file. This is to allow for doing binary search later within the index file to look up records by their keys and get their closest positions in the data file.'
      td_notes '128'
    end
    entry do
      td_command 'fs.defaultFS'
      name 'The name of the default file system. A URI whose scheme and authority determine the FileSystem implementation. The uri\'s scheme determines the config property (fs.SCHEME.impl) naming the FileSystem implementation class. The uri\'s authority is used to determine the host, port, etc. for a filesystem.'
      td_notes 'file:///'
    end
    entry do
      td_command 'fs.default.name'
      name 'Deprecated. Use (fs.defaultFS) property instead'
      td_notes 'file:///'
    end
    entry do
      td_command 'fs.trash.interval'
      name 'Number of minutes after which the checkpoint gets deleted. If zero, the trash feature is disabled. This option may be configured both on the server and the client. If trash is disabled server side then the client side configuration is checked. If trash is enabled on the server side then the value configured on the server is used and the client configuration value is ignored.'
      td_notes '0'
    end
    entry do
      td_command 'fs.trash.checkpoint.interval'
      name 'Number of minutes between trash checkpoints. Should be smaller or equal to fs.trash.interval. If zero, the value is set to the value of fs.trash.interval. Every time the checkpointer runs it creates a new checkpoint out of current and removes checkpoints created more than fs.trash.interval minutes ago.'
      td_notes '0'
    end
    entry do
      td_command 'fs.AbstractFileSystem.file.impl'
      name 'The AbstractFileSystem for file: uris.'
      td_notes 'org.apache.hadoop.fs.local.LocalFs'
    end
    entry do
      td_command 'fs.AbstractFileSystem.har.impl'
      name 'The AbstractFileSystem for har: uris.'
      td_notes 'org.apache.hadoop.fs.HarFs'
    end
    entry do
      td_command 'fs.AbstractFileSystem.hdfs.impl'
      name 'The FileSystem for hdfs: uris.'
      td_notes 'org.apache.hadoop.fs.Hdfs'
    end
    entry do
      td_command 'fs.AbstractFileSystem.viewfs.impl'
      name 'The AbstractFileSystem for view file system for viewfs: uris (ie client side mount table:).'
      td_notes 'org.apache.hadoop.fs.viewfs.ViewFs'
    end
    entry do
      td_command 'fs.AbstractFileSystem.ftp.impl'
      name 'The FileSystem for Ftp: uris.'
      td_notes 'org.apache.hadoop.fs.ftp.FtpFs'
    end
    entry do
      td_command 'fs.ftp.host'
      name 'FTP filesystem connects to this server'
      td_notes '0.0.0.0'
    end
    entry do
      td_command 'fs.ftp.host.port'
      name 'FTP filesystem connects to fs.ftp.host on this port'
      td_notes '21'
    end
    entry do
      td_command 'fs.df.interval'
      name 'Disk usage statistics refresh interval in msec.'
      td_notes '60000'
    end
    entry do
      td_command 'fs.du.interval'
      name 'File space usage statistics refresh interval in msec.'
      td_notes '600000'
    end
    entry do
      td_command 'fs.s3.block.size'
      name 'Block size to use when writing files to S3.'
      td_notes '67108864'
    end
    entry do
      td_command 'fs.s3.buffer.dir'
      name 'Determines where on the local filesystem the S3 filesystem should store files before sending them to S3 (or after retrieving them from S3).'
      td_notes '${hadoop.tmp.dir}/s3'
    end
    entry do
      td_command 'fs.s3.maxRetries'
      name 'The maximum number of retries for reading or writing files to S3, before we signal failure to the application.'
      td_notes '4'
    end
    entry do
      td_command 'fs.s3.sleepTimeSeconds'
      name 'The number of seconds to sleep between each S3 retry.'
      td_notes '10'
    end
    entry do
      td_command 'fs.swift.impl'
      name 'The implementation class of the OpenStack Swift Filesystem'
      td_notes 'org.apache.hadoop.fs.swift.snative.SwiftNativeFileSystem'
    end
    entry do
      td_command 'fs.automatic.close'
      name 'By default, FileSystem instances are automatically closed at program exit using a JVM shutdown hook. Setting this property to false disables this behavior. This is an advanced option that should only be used by server applications requiring a more carefully orchestrated shutdown sequence.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'fs.s3n.block.size'
      name 'Block size to use when reading files using the native S3 filesystem (s3n: URIs).'
      td_notes '67108864'
    end
    entry do
      td_command 'fs.s3n.multipart.uploads.enabled'
      name 'Setting this property to true enables multiple uploads to native S3 filesystem. When uploading a file, it is split into blocks if the size is larger than fs.s3n.multipart.uploads.block.size.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'fs.s3n.multipart.uploads.block.size'
      name 'The block size for multipart uploads to native S3 filesystem. Default size is 64MB.'
      td_notes '67108864'
    end
    entry do
      td_command 'fs.s3n.multipart.copy.block.size'
      name 'The block size for multipart copy in native S3 filesystem. Default size is 5GB.'
      td_notes '5368709120'
    end
    entry do
      td_command 'fs.s3n.server-side-encryption-algorithm'
      name 'Specify a server-side encryption algorithm for S3. The default is NULL, and the only other currently allowable value is AES256.'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.awsAccessKeyId'
      name 'AWS access key ID. Omit for Role-based authentication.'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.awsSecretAccessKey'
      name 'AWS secret key. Omit for Role-based authentication.'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.connection.maximum'
      name 'Controls the maximum number of simultaneous connections to S3.'
      td_notes '15'
    end
    entry do
      td_command 'fs.s3a.connection.ssl.enabled'
      name 'Enables or disables SSL connections to S3.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'fs.s3a.endpoint'
      name 'AWS S3 endpoint to connect to. An up-to-date list is provided in the AWS Documentation: regions and endpoints. Without this property, the standard region (s3.amazonaws.com) is assumed.'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.proxy.host'
      name 'Hostname of the (optional) proxy server for S3 connections.'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.proxy.port'
      name 'Proxy server port. If this property is not set but fs.s3a.proxy.host is, port 80 or 443 is assumed (consistent with the value of fs.s3a.connection.ssl.enabled).'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.proxy.username'
      name 'Username for authenticating with proxy server.'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.proxy.password'
      name 'Password for authenticating with proxy server.'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.proxy.domain'
      name 'Domain for authenticating with proxy server.'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.proxy.workstation'
      name 'Workstation for authenticating with proxy server.'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.attempts.maximum'
      name 'How many times we should retry commands on transient errors.'
      td_notes '10'
    end
    entry do
      td_command 'fs.s3a.connection.establish.timeout'
      name 'Socket connection setup timeout in milliseconds.'
      td_notes '5000'
    end
    entry do
      td_command 'fs.s3a.connection.timeout'
      name 'Socket connection timeout in milliseconds.'
      td_notes '50000'
    end
    entry do
      td_command 'fs.s3a.paging.maximum'
      name 'How many keys to request from S3 when doing directory listings at a time.'
      td_notes '5000'
    end
    entry do
      td_command 'fs.s3a.threads.max'
      name 'Maximum number of concurrent active (part)uploads, which each use a thread from the threadpool.'
      td_notes '256'
    end
    entry do
      td_command 'fs.s3a.threads.core'
      name 'Number of core threads in the threadpool.'
      td_notes '15'
    end
    entry do
      td_command 'fs.s3a.threads.keepalivetime'
      name 'Number of seconds a thread can be idle before being terminated.'
      td_notes '60'
    end
    entry do
      td_command 'fs.s3a.max.total.tasks'
      name 'Number of (part)uploads allowed to the queue before blocking additional uploads.'
      td_notes '1000'
    end
    entry do
      td_command 'fs.s3a.multipart.size'
      name 'How big (in bytes) to split upload or copy operations up into.'
      td_notes '104857600'
    end
    entry do
      td_command 'fs.s3a.multipart.threshold'
      name 'Threshold before uploads or copies use parallel multipart operations.'
      td_notes '2147483647'
    end
    entry do
      td_command 'fs.s3a.acl.default'
      name 'Set a canned ACL for newly created and copied objects. Value may be private, public-read, public-read-write, authenticated-read, log-delivery-write, bucket-owner-read, or bucket-owner-full-control.'
      td_notes ''
    end
    entry do
      td_command 'fs.s3a.multipart.purge'
      name 'True if you want to purge existing multipart uploads that may not have been completed/aborted correctly'
      td_notes 'FALSE'
    end
    entry do
      td_command 'fs.s3a.multipart.purge.age'
      name 'Minimum age in seconds of multipart uploads to purge'
      td_notes '86400'
    end
    entry do
      td_command 'fs.s3a.buffer.dir'
      name 'Comma separated list of directories that will be used to buffer file uploads to.'
      td_notes '${hadoop.tmp.dir}/s3a'
    end
    entry do
      td_command 'fs.s3a.fast.upload'
      name 'Upload directly from memory instead of buffering to disk first. Memory usage and parallelism can be controlled as up to fs.s3a.multipart.size memory is consumed for each (part)upload actively uploading (fs.s3a.threads.max) or queueing (fs.s3a.max.total.tasks)'
      td_notes 'FALSE'
    end
    entry do
      td_command 'fs.s3a.fast.buffer.size'
      name 'Size of initial memory buffer in bytes allocated for an upload. No effect if fs.s3a.fast.upload is false.'
      td_notes '1048576'
    end
    entry do
      td_command 'fs.s3a.impl'
      name 'The implementation class of the S3A Filesystem'
      td_notes 'org.apache.hadoop.fs.s3a.S3AFileSystem'
    end
    entry do
      td_command 'io.seqfile.compress.blocksize'
      name 'The minimum block size for compression in block compressed SequenceFiles.'
      td_notes '1000000'
    end
    entry do
      td_command 'io.seqfile.lazydecompress'
      name 'Should values of block-compressed SequenceFiles be decompressed only when necessary.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'io.seqfile.sorter.recordlimit'
      name 'The limit on number of records to be kept in memory in a spill in SequenceFiles.Sorter'
      td_notes '1000000'
    end
    entry do
      td_command 'io.mapfile.bloom.size'
      name 'The size of BloomFilter-s used in BloomMapFile. Each time this many keys is appended the next BloomFilter will be created (inside a DynamicBloomFilter). Larger values minimize the number of filters, which slightly increases the performance, but may waste too much space if the total number of keys is usually much smaller than this number.'
      td_notes '1048576'
    end
    entry do
      td_command 'io.mapfile.bloom.error.rate'
      name 'The rate of false positives in BloomFilter-s used in BloomMapFile. As this value decreases, the size of BloomFilter-s increases exponentially. This value is the probability of encountering false positives (default is 0.5%).'
      td_notes '0.005'
    end
    entry do
      td_command 'hadoop.util.hash.type'
      name 'The default implementation of Hash. Currently this can take one of the two values: \'murmur\' to select MurmurHash and \'jenkins\' to select JenkinsHash.'
      td_notes 'murmur'
    end
    entry do
      td_command 'ipc.client.idlethreshold'
      name 'Defines the threshold number of connections after which connections will be inspected for idleness.'
      td_notes '4000'
    end
    entry do
      td_command 'ipc.client.kill.max'
      name 'Defines the maximum number of clients to disconnect in one go.'
      td_notes '10'
    end
    entry do
      td_command 'ipc.client.connection.maxidletime'
      name 'The maximum time in msec after which a client will bring down the connection to the server.'
      td_notes '10000'
    end
    entry do
      td_command 'ipc.client.connect.max.retries'
      name 'Indicates the number of retries a client will make to establish a server connection.'
      td_notes '10'
    end
    entry do
      td_command 'ipc.client.connect.retry.interval'
      name 'Indicates the number of milliseconds a client will wait for before retrying to establish a server connection.'
      td_notes '1000'
    end
    entry do
      td_command 'ipc.client.connect.timeout'
      name 'Indicates the number of milliseconds a client will wait for the socket to establish a server connection.'
      td_notes '20000'
    end
    entry do
      td_command 'ipc.client.connect.max.retries.on.timeouts'
      name 'Indicates the number of retries a client will make on socket timeout to establish a server connection.'
      td_notes '45'
    end
    entry do
      td_command 'ipc.client.ping'
      name 'Send a ping to the server when timeout on reading the response, if set to true. If no failure is detected, the client retries until at least a byte is read.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'ipc.ping.interval'
      name 'Timeout on waiting response from server, in milliseconds. The client will send ping when the interval is passed without receiving bytes, if ipc.client.ping is set to true.'
      td_notes '60000'
    end
    entry do
      td_command 'ipc.client.rpc-timeout.ms'
      name 'Timeout on waiting response from server, in milliseconds. Currently this timeout works only when ipc.client.ping is set to true because it uses the same facilities with IPC ping. The timeout overrides the ipc.ping.interval and client will throw exception instead of sending ping when the interval is passed.'
      td_notes '0'
    end
    entry do
      td_command 'ipc.server.listen.queue.size'
      name 'Indicates the length of the listen queue for servers accepting client connections.'
      td_notes '128'
    end
    entry do
      td_command 'ipc.maximum.data.length'
      name 'This indicates the maximum IPC message length (bytes) that can be accepted by the server. Messages larger than this value are rejected by server immediately. This setting should rarely need to be changed. It merits investigating whether the cause of long RPC messages can be fixed instead, e.g. by splitting into smaller messages.'
      td_notes '67108864'
    end
    entry do
      td_command 'ipc.server.log.slow.rpc'
      name 'This setting is useful to troubleshoot performance issues for various services. If this value is set to true then we log requests that fall into 99th percentile as well as increment RpcSlowCalls counter.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.security.impersonation.provider.class'
      name 'A class which implements ImpersonationProvider interface, used to authorize whether one user can impersonate a specific user. If not specified, the DefaultImpersonationProvider will be used. If a class is specified, then that class will be used to determine the impersonation capability.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.rpc.socket.factory.class.default'
      name 'Default SocketFactory to use. This parameter is expected to be formatted as "package.FactoryClassName".'
      td_notes 'org.apache.hadoop.net.StandardSocketFactory'
    end
    entry do
      td_command 'hadoop.rpc.socket.factory.class.ClientProtocol'
      name 'SocketFactory to use to connect to a DFS. If null or empty, use hadoop.rpc.socket.class.default. This socket factory is also used by DFSClient to create sockets to DataNodes.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.socks.server'
      name 'Address (host:port) of the SOCKS server to be used by the SocksSocketFactory.'
      td_notes ''
    end
    entry do
      td_command 'net.topology.node.switch.mapping.impl'
      name 'The default implementation of the DNSToSwitchMapping. It invokes a script specified in net.topology.script.file.name to resolve node names. If the value for net.topology.script.file.name is not set, the default value of DEFAULT_RACK is returned for all node names.'
      td_notes 'org.apache.hadoop.net.ScriptBasedMapping'
    end
    entry do
      td_command 'net.topology.impl'
      name 'The default implementation of NetworkTopology which is classic three layer one.'
      td_notes 'org.apache.hadoop.net.NetworkTopology'
    end
    entry do
      td_command 'net.topology.script.file.name'
      name 'The script name that should be invoked to resolve DNS names to NetworkTopology names. Example: the script would take host.foo.bar as an argument, and return /rack1 as the output.'
      td_notes ''
    end
    entry do
      td_command 'net.topology.script.number.args'
      name 'The max number of args that the script configured with net.topology.script.file.name should be run with. Each arg is an IP address.'
      td_notes '100'
    end
    entry do
      td_command 'net.topology.table.file.name'
      name 'The file name for a topology file, which is used when the net.topology.node.switch.mapping.impl property is set to org.apache.hadoop.net.TableMapping. The file format is a two column text file, with columns separated by whitespace. The first column is a DNS or IP address and the second column specifies the rack where the address maps. If no entry corresponding to a host in the cluster is found, then /default-rack is assumed.'
      td_notes ''
    end
    entry do
      td_command 'file.stream-buffer-size'
      name 'The size of buffer to stream files. The size of this buffer should probably be a multiple of hardware page size (4096 on Intel x86), and it determines how much data is buffered during read and write operations.'
      td_notes '4096'
    end
    entry do
      td_command 'file.bytes-per-checksum'
      name 'The number of bytes per checksum. Must not be larger than file.stream-buffer-size'
      td_notes '512'
    end
    entry do
      td_command 'file.client-write-packet-size'
      name 'Packet size for clients to write'
      td_notes '65536'
    end
    entry do
      td_command 'file.blocksize'
      name 'Block size'
      td_notes '67108864'
    end
    entry do
      td_command 'file.replication'
      name 'Replication factor'
      td_notes '1'
    end
    entry do
      td_command 's3.stream-buffer-size'
      name 'The size of buffer to stream files. The size of this buffer should probably be a multiple of hardware page size (4096 on Intel x86), and it determines how much data is buffered during read and write operations.'
      td_notes '4096'
    end
    entry do
      td_command 's3.bytes-per-checksum'
      name 'The number of bytes per checksum. Must not be larger than s3.stream-buffer-size'
      td_notes '512'
    end
    entry do
      td_command 's3.client-write-packet-size'
      name 'Packet size for clients to write'
      td_notes '65536'
    end
    entry do
      td_command 's3.blocksize'
      name 'Block size'
      td_notes '67108864'
    end
    entry do
      td_command 's3.replication'
      name 'Replication factor'
      td_notes '3'
    end
    entry do
      td_command 's3native.stream-buffer-size'
      name 'The size of buffer to stream files. The size of this buffer should probably be a multiple of hardware page size (4096 on Intel x86), and it determines how much data is buffered during read and write operations.'
      td_notes '4096'
    end
    entry do
      td_command 's3native.bytes-per-checksum'
      name 'The number of bytes per checksum. Must not be larger than s3native.stream-buffer-size'
      td_notes '512'
    end
    entry do
      td_command 's3native.client-write-packet-size'
      name 'Packet size for clients to write'
      td_notes '65536'
    end
    entry do
      td_command 's3native.blocksize'
      name 'Block size'
      td_notes '67108864'
    end
    entry do
      td_command 's3native.replication'
      name 'Replication factor'
      td_notes '3'
    end
    entry do
      td_command 'ftp.stream-buffer-size'
      name 'The size of buffer to stream files. The size of this buffer should probably be a multiple of hardware page size (4096 on Intel x86), and it determines how much data is buffered during read and write operations.'
      td_notes '4096'
    end
    entry do
      td_command 'ftp.bytes-per-checksum'
      name 'The number of bytes per checksum. Must not be larger than ftp.stream-buffer-size'
      td_notes '512'
    end
    entry do
      td_command 'ftp.client-write-packet-size'
      name 'Packet size for clients to write'
      td_notes '65536'
    end
    entry do
      td_command 'ftp.blocksize'
      name 'Block size'
      td_notes '67108864'
    end
    entry do
      td_command 'ftp.replication'
      name 'Replication factor'
      td_notes '3'
    end
    entry do
      td_command 'tfile.io.chunk.size'
      name 'Value chunk size in bytes. Default to 1MB. Values of the length less than the chunk size is guaranteed to have known value length in read time (See also TFile.Reader.Scanner.Entry.isValueLengthKnown()).'
      td_notes '1048576'
    end
    entry do
      td_command 'tfile.fs.output.buffer.size'
      name 'Buffer size used for FSDataOutputStream in bytes.'
      td_notes '262144'
    end
    entry do
      td_command 'tfile.fs.input.buffer.size'
      name 'Buffer size used for FSDataInputStream in bytes.'
      td_notes '262144'
    end
    entry do
      td_command 'hadoop.http.authentication.type'
      name 'Defines authentication used for Oozie HTTP endpoint. Supported values are: simple | kerberos |'
      td_notes 'AUTHENTICATION_HANDLER_CLASSNAME                                                                                                                                                   #  # simple'
    end
    entry do
      td_command 'hadoop.http.authentication.token.validity'
      name 'Indicates how long (in seconds) an authentication token is valid before it has to be renewed.'
      td_notes '36000'
    end
    entry do
      td_command 'hadoop.http.authentication.signature.secret.file'
      name 'The signature secret for signing the authentication tokens. The same secret should be used for JT/NN/DN/TT configurations.'
      td_notes '${user.home}/hadoop-http-auth-signature-secret'
    end
    entry do
      td_command 'hadoop.http.authentication.cookie.domain'
      name 'The domain to use for the HTTP cookie that stores the authentication token. In order to authentiation to work correctly across all Hadoop nodes web-consoles the domain must be correctly set. IMPORTANT: when using IP addresses, browsers ignore cookies with domain settings. For this setting to work properly all nodes in the cluster must be configured to generate URLs with hostname.domain names on it.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.http.authentication.simple.anonymous.allowed'
      name 'Indicates if anonymous requests are allowed when using \'simple\' authentication.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'hadoop.http.authentication.kerberos.principal'
      name 'Indicates the Kerberos principal to be used for HTTP endpoint. The principal MUST start with \'HTTP/\' as per Kerberos HTTP SPNEGO specification.'
      td_notes 'HTTP/_HOST@LOCALHOST'
    end
    entry do
      td_command 'hadoop.http.authentication.kerberos.keytab'
      name 'Location of the keytab file with the credentials for the principal. Referring to the same keytab file Oozie uses for its Kerberos credentials for Hadoop.'
      td_notes '${user.home}/hadoop.keytab'
    end
    entry do
      td_command 'hadoop.http.cross-origin.enabled'
      name 'Enable/disable the cross-origin (CORS) filter.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.http.cross-origin.allowed-origins'
      name 'Comma separated list of origins that are allowed for web services needing cross-origin (CORS) support. Wildcards (*) and patterns allowed'
      td_notes '*'
    end
    entry do
      td_command 'hadoop.http.cross-origin.allowed-methods'
      name 'Comma separated list of methods that are allowed for web services needing cross-origin (CORS) support.'
      td_notes 'GET,POST,HEAD'
    end
    entry do
      td_command 'hadoop.http.cross-origin.allowed-headers'
      name 'Comma separated list of headers that are allowed for web services needing cross-origin (CORS) support.'
      td_notes 'X-Requested-With,Content-Type,Accept,Origin'
    end
    entry do
      td_command 'hadoop.http.cross-origin.max-age'
      name 'The number of seconds a pre-flighted request can be cached for web services needing cross-origin (CORS) support.'
      td_notes '1800'
    end
    entry do
      td_command 'dfs.ha.fencing.methods'
      name 'List of fencing methods to use for service fencing. May contain builtin methods (eg shell and sshfence) or user-defined method.'
      td_notes ''
    end
    entry do
      td_command 'dfs.ha.fencing.ssh.connect-timeout'
      name 'SSH connection timeout, in milliseconds, to use with the builtin sshfence fencer.'
      td_notes '30000'
    end
    entry do
      td_command 'dfs.ha.fencing.ssh.private-key-files'
      name 'The SSH private key files to use with the builtin sshfence fencer.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.http.staticuser.user'
      name 'The user name to filter as, on static web filters while rendering content. An example use is the HDFS web UI (user to be used for browsing files).'
      td_notes 'dr.who'
    end
    entry do
      td_command 'ha.zookeeper.quorum'
      name 'A list of ZooKeeper server addresses, separated by commas, that are to be used by the ZKFailoverController in automatic failover.'
      td_notes ''
    end
    entry do
      td_command 'ha.zookeeper.session-timeout.ms'
      name 'The session timeout to use when the ZKFC connects to ZooKeeper. Setting this value to a lower value implies that server crashes will be detected more quickly, but risks triggering failover too aggressively in the case of a transient error or network blip.'
      td_notes '5000'
    end
    entry do
      td_command 'ha.zookeeper.parent-znode'
      name 'The ZooKeeper znode under which the ZK failover controller stores its information. Note that the nameservice ID is automatically appended to this znode, so it is not normally necessary to configure this, even in a federated environment.'
      td_notes '/hadoop-ha'
    end
    entry do
      td_command 'ha.zookeeper.acl'
      name 'A comma-separated list of ZooKeeper ACLs to apply to the znodes used by automatic failover. These ACLs are specified in the same format as used by the ZooKeeper CLI. If the ACL itself contains secrets, you may instead specify a path to a file, prefixed with the \'@\' symbol, and the value of this configuration will be loaded from within.'
      td_notes 'world:anyone:rwcda'
    end
    entry do
      td_command 'ha.zookeeper.auth'
      name 'A comma-separated list of ZooKeeper authentications to add when connecting to ZooKeeper. These are specified in the same format as used by the "addauth" command in the ZK CLI. It is important that the authentications specified here are sufficient to access znodes with the ACL specified in ha.zookeeper.acl. If the auths contain secrets, you may instead specify a path to a file, prefixed with the \'@\' symbol, and the value of this configuration will be loaded from within.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.ssl.keystores.factory.class'
      name 'The keystores factory to use for retrieving certificates.'
      td_notes 'org.apache.hadoop.security.ssl.FileBasedKeyStoresFactory'
    end
    entry do
      td_command 'hadoop.ssl.require.client.cert'
      name 'Whether client certificates are required'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.ssl.hostname.verifier'
      name 'The hostname verifier to provide for HttpsURLConnections. Valid values are: DEFAULT, STRICT, STRICT_I6, DEFAULT_AND_LOCALHOST and ALLOW_ALL'
      td_notes 'DEFAULT'
    end
    entry do
      td_command 'hadoop.ssl.server.conf'
      name 'Resource file from which ssl server keystore information will be extracted. This file is looked up in the classpath, typically it should be in Hadoop conf/ directory.'
      td_notes 'ssl-server.xml'
    end
    entry do
      td_command 'hadoop.ssl.client.conf'
      name 'Resource file from which ssl client keystore information will be extracted This file is looked up in the classpath, typically it should be in Hadoop conf/ directory.'
      td_notes 'ssl-client.xml'
    end
    entry do
      td_command 'hadoop.ssl.enabled'
      name 'Deprecated. Use dfs.http.policy and yarn.http.policy instead.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.ssl.enabled.protocols'
      name 'Protocols supported by the ssl.'
      td_notes 'TLSv1'
    end
    entry do
      td_command 'hadoop.jetty.logs.serve.aliases'
      name 'Enable/Disable aliases serving from jetty'
      td_notes 'TRUE'
    end
    entry do
      td_command 'fs.permissions.umask-mode'
      name 'The umask used when creating files and directories. Can be in octal or in symbolic. Examples are: "022" (octal for u=rwx,g=r-x,o=r-x in symbolic), or "u=rwx,g=rwx,o=" (symbolic for 007 in octal).'
      td_notes '22'
    end
    entry do
      td_command 'ha.health-monitor.connect-retry-interval.ms'
      name 'How often to retry connecting to the service.'
      td_notes '1000'
    end
    entry do
      td_command 'ha.health-monitor.check-interval.ms'
      name 'How often to check the service.'
      td_notes '1000'
    end
    entry do
      td_command 'ha.health-monitor.sleep-after-disconnect.ms'
      name 'How long to sleep after an unexpected RPC error.'
      td_notes '1000'
    end
    entry do
      td_command 'ha.health-monitor.rpc-timeout.ms'
      name 'Timeout for the actual monitorHealth() calls.'
      td_notes '45000'
    end
    entry do
      td_command 'ha.failover-controller.new-active.rpc-timeout.ms'
      name 'Timeout that the FC waits for the new active to become active'
      td_notes '60000'
    end
    entry do
      td_command 'ha.failover-controller.graceful-fence.rpc-timeout.ms'
      name 'Timeout that the FC waits for the old active to go to standby'
      td_notes '5000'
    end
    entry do
      td_command 'ha.failover-controller.graceful-fence.connection.retries'
      name 'FC connection retries for graceful fencing'
      td_notes '1'
    end
    entry do
      td_command 'ha.failover-controller.cli-check.rpc-timeout.ms'
      name 'Timeout that the CLI (manual) FC waits for monitorHealth, getServiceState'
      td_notes '20000'
    end
    entry do
      td_command 'ipc.client.fallback-to-simple-auth-allowed'
      name 'When a client is configured to attempt a secure connection, but attempts to connect to an insecure server, that server may instruct the client to switch to SASL SIMPLE (unsecure) authentication. This setting controls whether or not the client will accept this instruction from the server. When false (the default), the client will not allow the fallback to SIMPLE authentication, and will abort the connection.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'fs.client.resolve.remote.symlinks'
      name 'Whether to resolve symlinks when accessing a remote Hadoop filesystem. Setting this to false causes an exception to be thrown upon encountering a symlink. This setting does not apply to local filesystems, which automatically resolve local symlinks.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'nfs.exports.allowed.hosts'
      name 'By default, the export can be mounted by any client. The value string contains machine name and access privilege, separated by whitespace characters. The machine name format can be a single host, a Java regular expression, or an IPv4 address. The access privilege uses rw or ro to specify read/write or read-only access of the machines to exports. If the access privilege is not provided, the default is read-only. Entries are separated by ";". For example: "192.168.0.0/22 rw ; host.*\.example\.com ; host1.test.org ro;". Only the NFS gateway needs to restart after this property is updated.'
      td_notes '* rw'
    end
    entry do
      td_command 'hadoop.user.group.static.mapping.overrides'
      name 'Static mapping of user to groups. This will override the groups if available in the system for the specified user. In otherwords, groups look-up will not happen for these users, instead groups mapped in this configuration will be used. Mapping should be in this format. user1=group1,group2;user2=;user3=group2; Default, "dr.who=;" will consider "dr.who" as user without groups.'
      td_notes 'dr.who=;'
    end
    entry do
      td_command 'rpc.metrics.quantile.enable'
      name 'Setting this property to true and rpc.metrics.percentiles.intervals to a comma-separated list of the granularity in seconds, the 50/75/90/95/99th percentile latency for rpc queue/processing time in milliseconds are added to rpc metrics.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'rpc.metrics.percentiles.intervals'
      name 'A comma-separated list of the granularity in seconds for the metrics which describe the 50/75/90/95/99th percentile latency for rpc queue/processing time. The metrics are outputted if rpc.metrics.quantile.enable is set to true.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.crypto.codec.classes.EXAMPLECIPHERSUITE'
      name 'The prefix for a given crypto codec, contains a comma-separated list of implementation classes for a given crypto codec (eg EXAMPLECIPHERSUITE). The first implementation will be used if available, others are fallbacks.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.crypto.codec.classes.aes.ctr.nopadding'
      name 'Comma-separated list of crypto codec implementations for AES/CTR/NoPadding. The first implementation will be used if available, others are fallbacks.'
      td_notes 'org.apache.hadoop.crypto.OpensslAesCtrCryptoCodec,org.apache.hadoop.crypto.JceAesCtrCryptoCodec'
    end
    entry do
      td_command 'hadoop.security.crypto.cipher.suite'
      name 'Cipher suite for crypto codec.'
      td_notes 'AES/CTR/NoPadding'
    end
    entry do
      td_command 'hadoop.security.crypto.jce.provider'
      name 'The JCE provider name used in CryptoCodec.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.crypto.jceks.key.serialfilter'
      name 'Enhanced KeyStore Mechanisms in JDK 8u171 introduced jceks.key.serialFilter. If jceks.key.serialFilter is configured, the JCEKS KeyStore uses it during the deserialization of the encrypted Key object stored inside a SecretKeyEntry. If jceks.key.serialFilter is not configured it will cause an error when recovering keystore file in KeyProviderFactory when recovering key from keystore file using JDK 8u171 or newer. The filter pattern uses the same format as jdk.serialFilter. The value of this property will be used as the following: 1. The value of jceks.key.serialFilter system property takes precedence over the value of this property. 2. In the absence of jceks.key.serialFilter system property the value of this property will be set as the value of jceks.key.serialFilter. 3. If the value of this property and jceks.key.serialFilter system property has not been set, org.apache.hadoop.crypto.key.KeyProvider sets a default value for jceks.key.serialFilter.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.crypto.buffer.size'
      name 'The buffer size used by CryptoInputStream and CryptoOutputStream.'
      td_notes '8192'
    end
    entry do
      td_command 'hadoop.security.java.secure.random.algorithm'
      name 'The java secure random algorithm.'
      td_notes 'SHA1PRNG'
    end
    entry do
      td_command 'hadoop.security.secure.random.impl'
      name 'Implementation of secure random.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.security.random.device.file.path'
      name 'OS security random device file path.'
      td_notes '/dev/urandom'
    end
    entry do
      td_command 'fs.har.impl.disable.cache'
      name 'Don\'t cache \'har\' filesystem instances.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'hadoop.security.kms.client.authentication.retry-count'
      name 'Number of time to retry connecting to KMS on authentication failure'
      td_notes '1'
    end
    entry do
      td_command 'hadoop.security.kms.client.encrypted.key.cache.size'
      name 'Size of the EncryptedKeyVersion cache Queue for each key'
      td_notes '500'
    end
    entry do
      td_command 'hadoop.security.kms.client.encrypted.key.cache.low-watermark'
      name 'If size of the EncryptedKeyVersion cache Queue falls below the low watermark, this cache queue will be scheduled for a refill'
      td_notes '0.3f'
    end
    entry do
      td_command 'hadoop.security.kms.client.encrypted.key.cache.num.refill.threads'
      name 'Number of threads to use for refilling depleted EncryptedKeyVersion cache Queues'
      td_notes '2'
    end
    entry do
      td_command 'hadoop.security.kms.client.encrypted.key.cache.expiry'
      name 'Cache expiry time for a Key, after which the cache Queue for this key will be dropped. Default = 12hrs'
      td_notes '43200000'
    end
    entry do
      td_command 'hadoop.htrace.spanreceiver.classes'
      name 'A comma separated list of the fully-qualified class name of classes implementing SpanReceiver. The tracing system works by collecting information in structs called \'Spans\'. It is up to you to choose how you want to receive this information by implementing the SpanReceiver interface.'
      td_notes ''
    end
    entry do
      td_command 'ipc.server.max.connections'
      name 'The maximum number of concurrent connections a server is allowed to accept. If this limit is exceeded, incoming connections will first fill the listen queue and then may go to an OS-specific listen overflow queue. The client may fail or timeout, but the server can avoid running out of file descriptors using this feature. 0 means no limit.'
      td_notes '0'
    end
    entry do
      td_command 'hadoop.registry.rm.enabled'
      name 'Is the registry enabled in the YARN Resource Manager? If true, the YARN RM will, as needed. create the user and system paths, and purge service records when containers, application attempts and applications complete. If false, the paths must be created by other means, and no automatic cleanup of service records will take place.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.registry.zk.root'
      name 'The root zookeeper node for the registry'
      td_notes '/registry'
    end
    entry do
      td_command 'hadoop.registry.zk.session.timeout.ms'
      name 'Zookeeper session timeout in milliseconds'
      td_notes '60000'
    end
    entry do
      td_command 'hadoop.registry.zk.connection.timeout.ms'
      name 'Zookeeper connection timeout in milliseconds'
      td_notes '15000'
    end
    entry do
      td_command 'hadoop.registry.zk.retry.times'
      name 'Zookeeper connection retry count before failing'
      td_notes '5'
    end
    entry do
      td_command 'hadoop.registry.zk.retry.interval.ms'
      name ''
      td_notes '1000'
    end
    entry do
      td_command 'hadoop.registry.zk.retry.ceiling.ms'
      name 'Zookeeper retry limit in milliseconds, during exponential backoff. This places a limit even if the retry times and interval limit, combined with the backoff policy, result in a long retry period'
      td_notes '60000'
    end
    entry do
      td_command 'hadoop.registry.zk.quorum'
      name 'List of hostname:port pairs defining the zookeeper quorum binding for the registry'
      td_notes 'localhost:2181'
    end
    entry do
      td_command 'hadoop.registry.secure'
      name 'Key to set if the registry is secure. Turning it on changes the permissions policy from "open access" to restrictions on kerberos with the option of a user adding one or more auth key pairs down their own tree.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'hadoop.registry.system.acls'
      name 'A comma separated list of Zookeeper ACL identifiers with system access to the registry in a secure cluster. These are given full access to all entries. If there is an "@" at the end of a SASL entry it instructs the registry client to append the default kerberos domain.'
      td_notes 'sasl:yarn@, sasl:mapred@, sasl:hdfs@'
    end
    entry do
      td_command 'hadoop.registry.kerberos.realm'
      name 'The kerberos realm: used to set the realm of system principals which do not declare their realm, and any other accounts that need the value. If empty, the default realm of the running process is used. If neither are known and the realm is needed, then the registry service/client will fail.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.registry.jaas.context'
      name 'Key to define the JAAS context. Used in secure mode'
      td_notes 'Client'
    end
    entry do
      td_command 'hadoop.security.sensitive-config-keys'
      name 'A comma-separated list of regular expressions to match against configuration keys that should be redacted where appropriate, for example, when logging modified properties during a reconfiguration, private credentials should not be logged.'
      td_notes 'password$,fs.s3.*[Ss]ecret.?[Kk]ey,fs.azure.account.key.*,dfs.webhdfs.oauth2.[a-z]+.token,hadoop.security.sensitive-config-keys'
    end
  end
end
