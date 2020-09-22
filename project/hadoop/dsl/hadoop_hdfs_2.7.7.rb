cheatsheet do
  title 'Hadoop Hdfs 2.7.7'
  docset_file_name 'hadoop_hdfs_2.7.7'
  keyword 'hadoop'
  source_url 'cheat.kapeli.com'

  category do
    id 'hdfs'
    entry do
      td_command 'hadoop.hdfs.configuration.version'
      name 'version of this configuration file'
      td_notes '1'
    end
    entry do
      td_command 'dfs.namenode.rpc-address'
      name 'RPC address that handles all clients requests. In the case of HA/Federation where multiple namenodes exist, the name service id is added to the name e.g. dfs.namenode.rpc-address.ns1 dfs.namenode.rpc-address.EXAMPLENAMESERVICE The value of this property will take the form of nn-host1:rpc-port.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.rpc-bind-host'
      name 'The actual address the RPC server will bind to. If this optional address is set, it overrides only the hostname portion of dfs.namenode.rpc-address. It can also be specified per name node or name service for HA/Federation. This is useful for making the name node listen on all interfaces by setting it to 0.0.0.0.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.servicerpc-address'
      name 'RPC address for HDFS Services communication. BackupNode, Datanodes and all other services should be connecting to this address if it is configured. In the case of HA/Federation where multiple namenodes exist, the name service id is added to the name e.g. dfs.namenode.servicerpc-address.ns1 dfs.namenode.rpc-address.EXAMPLENAMESERVICE The value of this property will take the form of nn-host1:rpc-port. If the value of this property is unset the value of dfs.namenode.rpc-address will be used as the default.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.servicerpc-bind-host'
      name 'The actual address the service RPC server will bind to. If this optional address is set, it overrides only the hostname portion of dfs.namenode.servicerpc-address. It can also be specified per name node or name service for HA/Federation. This is useful for making the name node listen on all interfaces by setting it to 0.0.0.0.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.secondary.http-address'
      name 'The secondary namenode http server address and port.'
      td_notes '0.0.0.0:50090'
    end
    entry do
      td_command 'dfs.namenode.secondary.https-address'
      name 'The secondary namenode HTTPS server address and port.'
      td_notes '0.0.0.0:50091'
    end
    entry do
      td_command 'dfs.datanode.address'
      name 'The datanode server address and port for data transfer.'
      td_notes '0.0.0.0:50010'
    end
    entry do
      td_command 'dfs.datanode.http.address'
      name 'The datanode http server address and port.'
      td_notes '0.0.0.0:50075'
    end
    entry do
      td_command 'dfs.datanode.ipc.address'
      name 'The datanode ipc server address and port.'
      td_notes '0.0.0.0:50020'
    end
    entry do
      td_command 'dfs.datanode.handler.count'
      name 'The number of server threads for the datanode.'
      td_notes '10'
    end
    entry do
      td_command 'dfs.namenode.http-address'
      name 'The address and the base port where the dfs namenode web ui will listen on.'
      td_notes '0.0.0.0:50070'
    end
    entry do
      td_command 'dfs.namenode.http-bind-host'
      name 'The actual adress the HTTP server will bind to. If this optional address is set, it overrides only the hostname portion of dfs.namenode.http-address. It can also be specified per name node or name service for HA/Federation. This is useful for making the name node HTTP server listen on all interfaces by setting it to 0.0.0.0.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.heartbeat.recheck-interval'
      name 'This time decides the interval to check for expired datanodes. With this value and dfs.heartbeat.interval, the interval of deciding the datanode is stale or not is also calculated. The unit of this configuration is millisecond.'
      td_notes '300000'
    end
    entry do
      td_command 'dfs.http.policy'
      name 'Decide if HTTPS(SSL) is supported on HDFS This configures the HTTP endpoint for HDFS daemons: The following values are supported: - HTTP_ONLY : Service is provided only on http - HTTPS_ONLY : Service is provided only on https - HTTP_AND_HTTPS : Service is provided both on http and https'
      td_notes 'HTTP_ONLY'
    end
    entry do
      td_command 'dfs.client.https.need-auth'
      name 'Whether SSL client certificate authentication is required'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.client.cached.conn.retry'
      name 'The number of times the HDFS client will pull a socket from the cache. Once this number is exceeded, the client will try to create a new socket.'
      td_notes '3'
    end
    entry do
      td_command 'dfs.https.server.keystore.resource'
      name 'Resource file from which ssl server keystore information will be extracted'
      td_notes 'ssl-server.xml'
    end
    entry do
      td_command 'dfs.client.https.keystore.resource'
      name 'Resource file from which ssl client keystore information will be extracted'
      td_notes 'ssl-client.xml'
    end
    entry do
      td_command 'dfs.datanode.https.address'
      name 'The datanode secure http server address and port.'
      td_notes '0.0.0.0:50475'
    end
    entry do
      td_command 'dfs.namenode.https-address'
      name 'The namenode secure http server address and port.'
      td_notes '0.0.0.0:50470'
    end
    entry do
      td_command 'dfs.namenode.https-bind-host'
      name 'The actual adress the HTTPS server will bind to. If this optional address is set, it overrides only the hostname portion of dfs.namenode.https-address. It can also be specified per name node or name service for HA/Federation. This is useful for making the name node HTTPS server listen on all interfaces by setting it to 0.0.0.0.'
      td_notes ''
    end
    entry do
      td_command 'dfs.datanode.dns.interface'
      name 'The name of the Network Interface from which a data node should report its IP address.'
      td_notes 'default'
    end
    entry do
      td_command 'dfs.datanode.dns.nameserver'
      name 'The host name or IP address of the name server (DNS) which a DataNode should use to determine the host name used by the NameNode for communication and display purposes.'
      td_notes 'default'
    end
    entry do
      td_command 'dfs.namenode.backup.address'
      name 'The backup node server address and port. If the port is 0 then the server will start on a free port.'
      td_notes '0.0.0.0:50100'
    end
    entry do
      td_command 'dfs.namenode.backup.http-address'
      name 'The backup node http server address and port. If the port is 0 then the server will start on a free port.'
      td_notes '0.0.0.0:50105'
    end
    entry do
      td_command 'dfs.namenode.replication.considerLoad'
      name 'Decide if chooseTarget considers the target\'s load or not'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.default.chunk.view.size'
      name 'The number of bytes to view for a file on the browser.'
      td_notes '32768'
    end
    entry do
      td_command 'dfs.datanode.du.reserved'
      name 'Reserved space in bytes per volume. Always leave this much space free for non dfs use. Specific storage type based reservation is also supported. The property can be followed with corresponding storage types ([ssd]/[disk]/[archive]/[ram_disk]) for cluster with heterogeneous storage. For example, reserved space for RAM_DISK storage can be configured using property \'dfs.datanode.du.reserved.ram_disk\'. If specific storage type reservation is not configured then dfs.datanode.du.reserved will be used.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.namenode.name.dir'
      name 'Determines where on the local filesystem the DFS name node should store the name table(fsimage). If this is a comma-delimited list of directories then the name table is replicated in all of the directories, for redundancy.'
      td_notes 'file://${hadoop.tmp.dir}/dfs/name'
    end
    entry do
      td_command 'dfs.namenode.name.dir.restore'
      name 'Set to true to enable NameNode to attempt recovering a previously failed dfs.namenode.name.dir. When enabled, a recovery of any failed directory is attempted during checkpoint.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.namenode.fs-limits.max-component-length'
      name 'Defines the maximum number of bytes in UTF-8 encoding in each component of a path. A value of 0 will disable the check.'
      td_notes '255'
    end
    entry do
      td_command 'dfs.namenode.fs-limits.max-directory-items'
      name 'Defines the maximum number of items that a directory may contain. Cannot set the property to a value less than 1 or more than 6400000.'
      td_notes '1048576'
    end
    entry do
      td_command 'dfs.namenode.fs-limits.min-block-size'
      name 'Minimum block size in bytes, enforced by the Namenode at create time. This prevents the accidental creation of files with tiny block sizes (and thus many blocks), which can degrade performance.'
      td_notes '1048576'
    end
    entry do
      td_command 'dfs.namenode.fs-limits.max-blocks-per-file'
      name 'Maximum number of blocks per file, enforced by the Namenode on write. This prevents the creation of extremely large files which can degrade performance.'
      td_notes '1048576'
    end
    entry do
      td_command 'dfs.namenode.edits.dir'
      name 'Determines where on the local filesystem the DFS name node should store the transaction (edits) file. If this is a comma-delimited list of directories then the transaction file is replicated in all of the directories, for redundancy. Default value is same as dfs.namenode.name.dir'
      td_notes '${dfs.namenode.name.dir}'
    end
    entry do
      td_command 'dfs.namenode.shared.edits.dir'
      name 'A directory on shared storage between the multiple namenodes in an HA cluster. This directory will be written by the active and read by the standby in order to keep the namespaces synchronized. This directory does not need to be listed in dfs.namenode.edits.dir above. It should be left empty in a non-HA cluster.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.edits.journal-plugin.qjournal'
      name ''
      td_notes 'org.apache.hadoop.hdfs.qjournal.client.QuorumJournalManager'
    end
    entry do
      td_command 'dfs.permissions.enabled'
      name 'If "true", enable permission checking in HDFS. If "false", permission checking is turned off, but all other behavior is unchanged. Switching from one parameter value to the other does not change the mode, owner or group of files or directories.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.permissions.superusergroup'
      name 'The name of the group of super-users. The value should be a single group name.'
      td_notes 'supergroup'
    end
    entry do
      td_command 'dfs.cluster.administrators'
      name 'ACL for the admins, this configuration is used to control who can access the default servlets in the namenode, etc. The value should be a comma separated list of users and groups. The user list comes first and is separated by a space followed by the group list, e.g. "user1,user2 group1,group2". Both users and groups are optional, so "user1", " group1", "", "user1 group1", "user1,user2 group1,group2" are all valid (note the leading space in " group1"). \'*\' grants access to all users and groups, e.g. \'*\', \'* \' and \' *\' are all valid.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.acls.enabled'
      name 'Set to true to enable support for HDFS ACLs (Access Control Lists). By default, ACLs are disabled. When ACLs are disabled, the NameNode rejects all RPCs related to setting or getting ACLs.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.namenode.lazypersist.file.scrub.interval.sec'
      name 'The NameNode periodically scans the namespace for LazyPersist files with missing blocks and unlinks them from the namespace. This configuration key controls the interval between successive scans. Set it to a negative value to disable this behavior.'
      td_notes '300'
    end
    entry do
      td_command 'dfs.block.access.token.enable'
      name 'If "true", access tokens are used as capabilities for accessing datanodes. If "false", no access tokens are checked on accessing datanodes.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.block.access.key.update.interval'
      name 'Interval in minutes at which namenode updates its access keys.'
      td_notes '600'
    end
    entry do
      td_command 'dfs.block.access.token.lifetime'
      name 'The lifetime of access tokens in minutes.'
      td_notes '600'
    end
    entry do
      td_command 'dfs.datanode.data.dir'
      name 'Determines where on the local filesystem an DFS data node should store its blocks. If this is a comma-delimited list of directories, then data will be stored in all named directories, typically on different devices. The directories should be tagged with corresponding storage types ([SSD]/[DISK]/[ARCHIVE]/[RAM_DISK]) for HDFS storage policies. The default storage type will be DISK if the directory does not have a storage type tagged explicitly. Directories that do not exist will be created if local filesystem permission allows.'
      td_notes 'file://${hadoop.tmp.dir}/dfs/data'
    end
    entry do
      td_command 'dfs.datanode.data.dir.perm'
      name 'Permissions for the directories on on the local filesystem where the DFS data node store its blocks. The permissions can either be octal or symbolic.'
      td_notes '700'
    end
    entry do
      td_command 'dfs.replication'
      name 'Default block replication. The actual number of replications can be specified when the file is created. The default is used if replication is not specified in create time.'
      td_notes '3'
    end
    entry do
      td_command 'dfs.replication.max'
      name 'Maximal block replication.'
      td_notes '512'
    end
    entry do
      td_command 'dfs.namenode.replication.min'
      name 'Minimal block replication.'
      td_notes '1'
    end
    entry do
      td_command 'dfs.blocksize'
      name 'The default block size for new files, in bytes. You can use the following suffix (case insensitive): k(kilo), m(mega), g(giga), t(tera), p(peta), e(exa) to specify the size (such as 128k, 512m, 1g, etc.), Or provide complete size in bytes (such as 134217728 for 128 MB).'
      td_notes '134217728'
    end
    entry do
      td_command 'dfs.client.block.write.retries'
      name 'The number of retries for writing blocks to the data nodes, before we signal failure to the application.'
      td_notes '3'
    end
    entry do
      td_command 'dfs.client.block.write.replace-datanode-on-failure.enable'
      name 'If there is a datanode/network failure in the write pipeline, DFSClient will try to remove the failed datanode from the pipeline and then continue writing with the remaining datanodes. As a result, the number of datanodes in the pipeline is decreased. The feature is to add new datanodes to the pipeline. This is a site-wide property to enable/disable the feature. When the cluster size is extremely small, e.g. 3 nodes or less, cluster administrators may want to set the policy to NEVER in the default configuration file or disable this feature. Otherwise, users may experience an unusually high rate of pipeline failures since it is impossible to find new datanodes for replacement. See also dfs.client.block.write.replace-datanode-on-failure.policy'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.client.block.write.replace-datanode-on-failure.policy'
      name 'This property is used only if the value of dfs.client.block.write.replace-datanode-on-failure.enable is true. ALWAYS: always add a new datanode when an existing datanode is removed. NEVER: never add a new datanode. DEFAULT: Let r be the replication number. Let n be the number of existing datanodes. Add a new datanode only if r is greater than or equal to 3 and either (1) floor(r/2) is greater than or equal to n; or (2) r is greater than n and the block is hflushed/appended.'
      td_notes 'DEFAULT'
    end
    entry do
      td_command 'dfs.client.block.write.replace-datanode-on-failure.best-effort'
      name 'This property is used only if the value of dfs.client.block.write.replace-datanode-on-failure.enable is true. Best effort means that the client will try to replace a failed datanode in write pipeline (provided that the policy is satisfied), however, it continues the write operation in case that the datanode replacement also fails. Suppose the datanode replacement fails. false: An exception should be thrown so that the write will fail. true : The write should be resumed with the remaining datandoes. Note that setting this property to true allows writing to a pipeline with a smaller number of datanodes. As a result, it increases the probability of data loss.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.blockreport.intervalMsec'
      name 'Determines block reporting interval in milliseconds.'
      td_notes '21600000'
    end
    entry do
      td_command 'dfs.blockreport.initialDelay'
      name 'Delay for first block report in seconds.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.blockreport.split.threshold'
      name 'If the number of blocks on the DataNode is below this threshold then it will send block reports for all Storage Directories in a single message. If the number of blocks exceeds this threshold then the DataNode will send block reports for each Storage Directory in separate messages. Set to zero to always split.'
      td_notes '1000000'
    end
    entry do
      td_command 'dfs.datanode.directoryscan.interval'
      name 'Interval in seconds for Datanode to scan data directories and reconcile the difference between blocks in memory and on the disk.'
      td_notes '21600'
    end
    entry do
      td_command 'dfs.datanode.directoryscan.threads'
      name 'How many threads should the threadpool used to compile reports for volumes in parallel have.'
      td_notes '1'
    end
    entry do
      td_command 'dfs.datanode.directoryscan.throttle.limit.ms.per.sec'
      name 'The report compilation threads are limited to only running for a given number of milliseconds per second, as configured by the property. The limit is taken per thread, not in aggregate, e.g. setting a limit of 100ms for 4 compiler threads will result in each thread being limited to 100ms, not 25ms. Note that the throttle does not interrupt the report compiler threads, so the actual running time of the threads per second will typically be somewhat higher than the throttle limit, usually by no more than 20%. Setting this limit to 1000 disables compiler thread throttling. Only values between 1 and 1000 are valid. Setting an invalid value will result in the throttle being disbled and an error message being logged. 1000 is the default setting.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.heartbeat.interval'
      name 'Determines datanode heartbeat interval in seconds.'
      td_notes '3'
    end
    entry do
      td_command 'dfs.namenode.handler.count'
      name 'The number of server threads for the namenode.'
      td_notes '10'
    end
    entry do
      td_command 'dfs.namenode.safemode.threshold-pct'
      name 'Specifies the percentage of blocks that should satisfy the minimal replication requirement defined by dfs.namenode.replication.min. Values less than or equal to 0 mean not to wait for any particular percentage of blocks before exiting safemode. Values greater than 1 will make safe mode permanent.'
      td_notes '0.999f'
    end
    entry do
      td_command 'dfs.namenode.safemode.min.datanodes'
      name 'Specifies the number of datanodes that must be considered alive before the name node exits safemode. Values less than or equal to 0 mean not to take the number of live datanodes into account when deciding whether to remain in safe mode during startup. Values greater than the number of datanodes in the cluster will make safe mode permanent.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.namenode.safemode.extension'
      name 'Determines extension of safe mode in milliseconds after the threshold level is reached.'
      td_notes '30000'
    end
    entry do
      td_command 'dfs.namenode.resource.check.interval'
      name 'The interval in milliseconds at which the NameNode resource checker runs. The checker calculates the number of the NameNode storage volumes whose available spaces are more than dfs.namenode.resource.du.reserved, and enters safemode if the number becomes lower than the minimum value specified by dfs.namenode.resource.checked.volumes.minimum.'
      td_notes '5000'
    end
    entry do
      td_command 'dfs.namenode.resource.du.reserved'
      name 'The amount of space to reserve/require for a NameNode storage directory in bytes. The default is 100MB.'
      td_notes '104857600'
    end
    entry do
      td_command 'dfs.namenode.resource.checked.volumes'
      name 'A list of local directories for the NameNode resource checker to check in addition to the local edits directories.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.resource.checked.volumes.minimum'
      name 'The minimum number of redundant NameNode storage volumes required.'
      td_notes '1'
    end
    entry do
      td_command 'dfs.datanode.balance.bandwidthPerSec'
      name 'Specifies the maximum amount of bandwidth that each datanode can utilize for the balancing purpose in term of the number of bytes per second.'
      td_notes '1048576'
    end
    entry do
      td_command 'dfs.mover.max-no-move-interval'
      name 'If this specified amount of time has elapsed and no block has been moved out of a source DataNode, on more effort will be made to move blocks out of this DataNode in the current Mover iteration.'
      td_notes '60000'
    end
    entry do
      td_command 'dfs.hosts'
      name 'Names a file that contains a list of hosts that are permitted to connect to the namenode. The full pathname of the file must be specified. If the value is empty, all hosts are permitted.'
      td_notes ''
    end
    entry do
      td_command 'dfs.hosts.exclude'
      name 'Names a file that contains a list of hosts that are not permitted to connect to the namenode. The full pathname of the file must be specified. If the value is empty, no hosts are excluded.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.max.objects'
      name 'The maximum number of files, directories and blocks dfs supports. A value of zero indicates no limit to the number of objects that dfs supports.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.namenode.datanode.registration.ip-hostname-check'
      name 'If true (the default), then the namenode requires that a connecting datanode\'s address must be resolved to a hostname. If necessary, a reverse DNS lookup is performed. All attempts to register a datanode from an unresolvable address are rejected. It is recommended that this setting be left on to prevent accidental registration of datanodes listed by hostname in the excludes file during a DNS outage. Only set this to false in environments where there is no infrastructure to support reverse DNS lookup.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.namenode.decommission.interval'
      name 'Namenode periodicity in seconds to check if decommission is complete.'
      td_notes '30'
    end
    entry do
      td_command 'dfs.namenode.decommission.blocks.per.interval'
      name 'The approximate number of blocks to process per decommission interval, as defined in dfs.namenode.decommission.interval.'
      td_notes '500000'
    end
    entry do
      td_command 'dfs.namenode.decommission.max.concurrent.tracked.nodes'
      name 'The maximum number of decommission-in-progress datanodes nodes that will be tracked at one time by the namenode. Tracking a decommission-in-progress datanode consumes additional NN memory proportional to the number of blocks on the datnode. Having a conservative limit reduces the potential impact of decomissioning a large number of nodes at once. A value of 0 means no limit will be enforced.'
      td_notes '100'
    end
    entry do
      td_command 'dfs.namenode.replication.interval'
      name 'The periodicity in seconds with which the namenode computes replication work for datanodes.'
      td_notes '3'
    end
    entry do
      td_command 'dfs.namenode.accesstime.precision'
      name 'The access time for HDFS file is precise upto this value. The default value is 1 hour. Setting a value of 0 disables access times for HDFS.'
      td_notes '3600000'
    end
    entry do
      td_command 'dfs.datanode.plugins'
      name 'Comma-separated list of datanode plug-ins to be activated.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.plugins'
      name 'Comma-separated list of namenode plug-ins to be activated.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.block-placement-policy.default.prefer-local-node'
      name 'Controls how the default block placement policy places the first replica of a block. When true, it will prefer the node where the client is running. When false, it will prefer a node in the same rack as the client. Setting to false avoids situations where entire copies of large files end up on a single node, thus creating hotspots.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.stream-buffer-size'
      name 'The size of buffer to stream files. The size of this buffer should probably be a multiple of hardware page size (4096 on Intel x86), and it determines how much data is buffered during read and write operations.'
      td_notes '4096'
    end
    entry do
      td_command 'dfs.bytes-per-checksum'
      name 'The number of bytes per checksum. Must not be larger than dfs.stream-buffer-size'
      td_notes '512'
    end
    entry do
      td_command 'dfs.client-write-packet-size'
      name 'Packet size for clients to write'
      td_notes '65536'
    end
    entry do
      td_command 'dfs.client.write.exclude.nodes.cache.expiry.interval.millis'
      name 'The maximum period to keep a DN in the excluded nodes list at a client. After this period, in milliseconds, the previously excluded node(s) will be removed automatically from the cache and will be considered good for block allocations again. Useful to lower or raise in situations where you keep a file open for very long periods (such as a Write-Ahead-Log (WAL) file) to make the writer tolerant to cluster maintenance restarts. Defaults to 10 minutes.'
      td_notes '600000'
    end
    entry do
      td_command 'dfs.namenode.checkpoint.dir'
      name 'Determines where on the local filesystem the DFS secondary name node should store the temporary images to merge. If this is a comma-delimited list of directories then the image is replicated in all of the directories for redundancy.'
      td_notes 'file://${hadoop.tmp.dir}/dfs/namesecondary'
    end
    entry do
      td_command 'dfs.namenode.checkpoint.edits.dir'
      name 'Determines where on the local filesystem the DFS secondary name node should store the temporary edits to merge. If this is a comma-delimited list of directories then the edits is replicated in all of the directories for redundancy. Default value is same as dfs.namenode.checkpoint.dir'
      td_notes '${dfs.namenode.checkpoint.dir}'
    end
    entry do
      td_command 'dfs.namenode.checkpoint.period'
      name 'The number of seconds between two periodic checkpoints.'
      td_notes '3600'
    end
    entry do
      td_command 'dfs.namenode.checkpoint.txns'
      name 'The Secondary NameNode or CheckpointNode will create a checkpoint of the namespace every \'dfs.namenode.checkpoint.txns\' transactions, regardless of whether \'dfs.namenode.checkpoint.period\' has expired.'
      td_notes '1000000'
    end
    entry do
      td_command 'dfs.namenode.checkpoint.check.period'
      name 'The SecondaryNameNode and CheckpointNode will poll the NameNode every \'dfs.namenode.checkpoint.check.period\' seconds to query the number of uncheckpointed transactions.'
      td_notes '60'
    end
    entry do
      td_command 'dfs.namenode.checkpoint.max-retries'
      name 'The SecondaryNameNode retries failed checkpointing. If the failure occurs while loading fsimage or replaying edits, the number of retries is limited by this variable.'
      td_notes '3'
    end
    entry do
      td_command 'dfs.namenode.num.checkpoints.retained'
      name 'The number of image checkpoint files (fsimage_*) that will be retained by the NameNode and Secondary NameNode in their storage directories. All edit logs (stored on edits_* files) necessary to recover an up-to-date namespace from the oldest retained checkpoint will also be retained.'
      td_notes '2'
    end
    entry do
      td_command 'dfs.namenode.num.extra.edits.retained'
      name 'The number of extra transactions which should be retained beyond what is minimally necessary for a NN restart. It does not translate directly to file\'s age, or the number of files kept, but to the number of transactions (here "edits" means transactions). One edit file may contain several transactions (edits). During checkpoint, NameNode will identify the total number of edits to retain as extra by checking the latest checkpoint transaction value, subtracted by the value of this property. Then, it scans edits files to identify the older ones that don\'t include the computed range of retained transactions that are to be kept around, and purges them subsequently. The retainment can be useful for audit purposes or for an HA setup where a remote Standby Node may have been offline for some time and need to have a longer backlog of retained edits in order to start again. Typically each edit is on the order of a few hundred bytes, so the default of 1 million edits should be on the order of hundreds of MBs or low GBs. NOTE: Fewer extra edits may be retained than value specified for this setting if doing so would mean that more segments would be retained than the number configured by dfs.namenode.max.extra.edits.segments.retained.'
      td_notes '1000000'
    end
    entry do
      td_command 'dfs.namenode.max.extra.edits.segments.retained'
      name 'The maximum number of extra edit log segments which should be retained beyond what is minimally necessary for a NN restart. When used in conjunction with dfs.namenode.num.extra.edits.retained, this configuration property serves to cap the number of extra edits files to a reasonable value.'
      td_notes '10000'
    end
    entry do
      td_command 'dfs.namenode.delegation.key.update-interval'
      name 'The update interval for master key for delegation tokens in the namenode in milliseconds.'
      td_notes '86400000'
    end
    entry do
      td_command 'dfs.namenode.delegation.token.max-lifetime'
      name 'The maximum lifetime in milliseconds for which a delegation token is valid.'
      td_notes '604800000'
    end
    entry do
      td_command 'dfs.namenode.delegation.token.renew-interval'
      name 'The renewal interval for delegation token in milliseconds.'
      td_notes '86400000'
    end
    entry do
      td_command 'dfs.datanode.failed.volumes.tolerated'
      name 'The number of volumes that are allowed to fail before a datanode stops offering service. By default any volume failure will cause a datanode to shutdown.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.image.compress'
      name 'Should the dfs image be compressed?'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.image.compression.codec'
      name 'If the dfs image is compressed, how should they be compressed? This has to be a codec defined in io.compression.codecs.'
      td_notes 'org.apache.hadoop.io.compress.DefaultCodec'
    end
    entry do
      td_command 'dfs.image.transfer.timeout'
      name 'Socket timeout for image transfer in milliseconds. This timeout and the related dfs.image.transfer.bandwidthPerSec parameter should be configured such that normal image transfer can complete successfully. This timeout prevents client hangs when the sender fails during image transfer. This is socket timeout during image transfer.'
      td_notes '60000'
    end
    entry do
      td_command 'dfs.image.transfer.bandwidthPerSec'
      name 'Maximum bandwidth used for image transfer in bytes per second. This can help keep normal namenode operations responsive during checkpointing. The maximum bandwidth and timeout in dfs.image.transfer.timeout should be set such that normal image transfers can complete successfully. A default value of 0 indicates that throttling is disabled.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.image.transfer.chunksize'
      name 'Chunksize in bytes to upload the checkpoint. Chunked streaming is used to avoid internal buffering of contents of image file of huge size.'
      td_notes '65536'
    end
    entry do
      td_command 'dfs.namenode.support.allow.format'
      name 'Does HDFS namenode allow itself to be formatted? You may consider setting this to false for any production cluster, to avoid any possibility of formatting a running DFS.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.datanode.max.transfer.threads'
      name 'Specifies the maximum number of threads to use for transferring data in and out of the DN.'
      td_notes '4096'
    end
    entry do
      td_command 'dfs.datanode.scan.period.hours'
      name 'If this is positive, the DataNode will not scan any individual block more than once in the specified scan period. If this is negative, the block scanner is disabled. If this is set to zero, then the default value of 504 hours or 3 weeks is used. Prior versions of HDFS incorrectly documented that setting this key to zero will disable the block scanner.'
      td_notes '504'
    end
    entry do
      td_command 'dfs.block.scanner.volume.bytes.per.second'
      name 'If this is 0, the DataNode\'s block scanner will be disabled. If this is positive, this is the number of bytes per second that the DataNode\'s block scanner will try to scan from each volume.'
      td_notes '1048576'
    end
    entry do
      td_command 'dfs.datanode.readahead.bytes'
      name 'While reading block files, if the Hadoop native libraries are available, the datanode can use the posix_fadvise system call to explicitly page data into the operating system buffer cache ahead of the current reader\'s position. This can improve performance especially when disks are highly contended. This configuration specifies the number of bytes ahead of the current read position which the datanode will attempt to read ahead. This feature may be disabled by configuring this property to 0. If the native libraries are not available, this configuration has no effect.'
      td_notes '4194304'
    end
    entry do
      td_command 'dfs.datanode.drop.cache.behind.reads'
      name 'In some workloads, the data read from HDFS is known to be significantly large enough that it is unlikely to be useful to cache it in the operating system buffer cache. In this case, the DataNode may be configured to automatically purge all data from the buffer cache after it is delivered to the client. This behavior is automatically disabled for workloads which read only short sections of a block (e.g HBase random-IO workloads). This may improve performance for some workloads by freeing buffer cache space usage for more cacheable data. If the Hadoop native libraries are not available, this configuration has no effect.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.datanode.drop.cache.behind.writes'
      name 'In some workloads, the data written to HDFS is known to be significantly large enough that it is unlikely to be useful to cache it in the operating system buffer cache. In this case, the DataNode may be configured to automatically purge all data from the buffer cache after it is written to disk. This may improve performance for some workloads by freeing buffer cache space usage for more cacheable data. If the Hadoop native libraries are not available, this configuration has no effect.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.datanode.sync.behind.writes'
      name 'If this configuration is enabled, the datanode will instruct the operating system to enqueue all written data to the disk immediately after it is written. This differs from the usual OS policy which may wait for up to 30 seconds before triggering writeback. This may improve performance for some workloads by smoothing the IO profile for data written to disk. If the Hadoop native libraries are not available, this configuration has no effect.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.client.failover.max.attempts'
      name 'Expert only. The number of client failover attempts that should be made before the failover is considered failed.'
      td_notes '15'
    end
    entry do
      td_command 'dfs.client.failover.sleep.base.millis'
      name 'Expert only. The time to wait, in milliseconds, between failover attempts increases exponentially as a function of the number of attempts made so far, with a random factor of +/- 50%. This option specifies the base value used in the failover calculation. The first failover will retry immediately. The 2nd failover attempt will delay at least dfs.client.failover.sleep.base.millis milliseconds. And so on.'
      td_notes '500'
    end
    entry do
      td_command 'dfs.client.failover.sleep.max.millis'
      name 'Expert only. The time to wait, in milliseconds, between failover attempts increases exponentially as a function of the number of attempts made so far, with a random factor of +/- 50%. This option specifies the maximum value to wait between failovers. Specifically, the time between two failover attempts will not exceed +/- 50% of dfs.client.failover.sleep.max.millis milliseconds.'
      td_notes '15000'
    end
    entry do
      td_command 'dfs.client.failover.connection.retries'
      name 'Expert only. Indicates the number of retries a failover IPC client will make to establish a server connection.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.client.failover.connection.retries.on.timeouts'
      name 'Expert only. The number of retry attempts a failover IPC client will make on socket timeout when establishing a server connection.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.client.datanode-restart.timeout'
      name 'Expert only. The time to wait, in seconds, from reception of an datanode shutdown notification for quick restart, until declaring the datanode dead and invoking the normal recovery mechanisms. The notification is sent by a datanode when it is being shutdown using the shutdownDatanode admin command with the upgrade option.'
      td_notes '30'
    end
    entry do
      td_command 'dfs.nameservices'
      name 'Comma-separated list of nameservices.'
      td_notes ''
    end
    entry do
      td_command 'dfs.nameservice.id'
      name 'The ID of this nameservice. If the nameservice ID is not configured or more than one nameservice is configured for dfs.nameservices it is determined automatically by matching the local node\'s address with the configured address.'
      td_notes ''
    end
    entry do
      td_command 'dfs.internal.nameservices'
      name 'Comma-separated list of nameservices that belong to this cluster. Datanode will report to all the nameservices in this list. By default this is set to the value of dfs.nameservices.'
      td_notes ''
    end
    entry do
      td_command 'dfs.ha.namenodes.EXAMPLENAMESERVICE'
      name 'The prefix for a given nameservice, contains a comma-separated list of namenodes for a given nameservice (eg EXAMPLENAMESERVICE).'
      td_notes ''
    end
    entry do
      td_command 'dfs.ha.namenode.id'
      name 'The ID of this namenode. If the namenode ID is not configured it is determined automatically by matching the local node\'s address with the configured address.'
      td_notes ''
    end
    entry do
      td_command 'dfs.ha.log-roll.period'
      name 'How often, in seconds, the StandbyNode should ask the active to roll edit logs. Since the StandbyNode only reads from finalized log segments, the StandbyNode will only be as up-to-date as how often the logs are rolled. Note that failover triggers a log roll so the StandbyNode will be up to date before it becomes active.'
      td_notes '120'
    end
    entry do
      td_command 'dfs.ha.tail-edits.period'
      name 'How often, in seconds, the StandbyNode should check for new finalized log segments in the shared edits log.'
      td_notes '60'
    end
    entry do
      td_command 'dfs.ha.automatic-failover.enabled'
      name 'Whether automatic failover is enabled. See the HDFS High Availability documentation for details on automatic HA configuration.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.client.use.datanode.hostname'
      name 'Whether clients should use datanode hostnames when connecting to datanodes.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.datanode.use.datanode.hostname'
      name 'Whether datanodes should use datanode hostnames when connecting to other datanodes for data transfer.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.client.local.interfaces'
      name 'A comma separated list of network interface names to use for data transfer between the client and datanodes. When creating a connection to read from or write to a datanode, the client chooses one of the specified interfaces at random and binds its socket to the IP of that interface. Individual names may be specified as either an interface name (eg "eth0"), a subinterface name (eg "eth0:0"), or an IP address (which may be specified using CIDR notation to match a range of IPs).'
      td_notes ''
    end
    entry do
      td_command 'dfs.datanode.shared.file.descriptor.paths'
      name 'A comma-separated list of paths to use when creating file descriptors that will be shared between the DataNode and the DFSClient. Typically we use /dev/shm, so that the file descriptors will not be written to disk. Systems that don\'t have /dev/shm will fall back to /tmp by default.'
      td_notes '/dev/shm,/tmp'
    end
    entry do
      td_command 'dfs.short.circuit.shared.memory.watcher.interrupt.check.ms'
      name 'The length of time in milliseconds that the short-circuit shared memory watcher will go between checking for java interruptions sent from other threads. This is provided mainly for unit tests.'
      td_notes '60000'
    end
    entry do
      td_command 'dfs.namenode.kerberos.principal'
      name 'The NameNode service principal. This is typically set to nn/_HOST@REALM.TLD. Each NameNode will substitute _HOST with its own fully qualified hostname at startup. The _HOST placeholder allows using the same configuration setting on both NameNodes in an HA setup.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.keytab.file'
      name 'The keytab file used by each NameNode daemon to login as its service principal. The principal name is configured with dfs.namenode.kerberos.principal.'
      td_notes ''
    end
    entry do
      td_command 'dfs.datanode.kerberos.principal'
      name 'The DataNode service principal. This is typically set to dn/_HOST@REALM.TLD. Each DataNode will substitute _HOST with its own fully qualified hostname at startup. The _HOST placeholder allows using the same configuration setting on all DataNodes.'
      td_notes ''
    end
    entry do
      td_command 'dfs.datanode.keytab.file'
      name 'The keytab file used by each DataNode daemon to login as its service principal. The principal name is configured with dfs.datanode.kerberos.principal.'
      td_notes ''
    end
    entry do
      td_command 'dfs.journalnode.kerberos.principal'
      name 'The JournalNode service principal. This is typically set to jn/_HOST@REALM.TLD. Each JournalNode will substitute _HOST with its own fully qualified hostname at startup. The _HOST placeholder allows using the same configuration setting on all JournalNodes.'
      td_notes ''
    end
    entry do
      td_command 'dfs.journalnode.keytab.file'
      name 'The keytab file used by each JournalNode daemon to login as its service principal. The principal name is configured with dfs.journalnode.kerberos.principal.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.kerberos.internal.spnego.principal'
      name 'The server principal used by the NameNode for web UI SPNEGO authentication when Kerberos security is enabled. This is typically set to HTTP/_HOST@REALM.TLD The SPNEGO server principal begins with the prefix HTTP/ by convention. If the value is \'*\', the web server will attempt to login with every principal specified in the keytab file dfs.web.authentication.kerberos.keytab.'
      td_notes '${dfs.web.authentication.kerberos.principal}'
    end
    entry do
      td_command 'dfs.journalnode.kerberos.internal.spnego.principal'
      name 'The server principal used by the JournalNode HTTP Server for SPNEGO authentication when Kerberos security is enabled. This is typically set to HTTP/_HOST@REALM.TLD. The SPNEGO server principal begins with the prefix HTTP/ by convention. If the value is \'*\', the web server will attempt to login with every principal specified in the keytab file dfs.web.authentication.kerberos.keytab. For most deployments this can be set to ${dfs.web.authentication.kerberos.principal} i.e use the value of dfs.web.authentication.kerberos.principal.'
      td_notes ''
    end
    entry do
      td_command 'dfs.secondary.namenode.kerberos.internal.spnego.principal'
      name 'The server principal used by the Secondary NameNode for web UI SPNEGO authentication when Kerberos security is enabled. Like all other Secondary NameNode settings, it is ignored in an HA setup. If the value is \'*\', the web server will attempt to login with every principal specified in the keytab file dfs.web.authentication.kerberos.keytab.'
      td_notes '${dfs.web.authentication.kerberos.principal}'
    end
    entry do
      td_command 'dfs.web.authentication.kerberos.principal'
      name 'The server principal used by the NameNode for WebHDFS SPNEGO authentication. Required when WebHDFS and security are enabled. In most secure clusters this setting is also used to specify the values for dfs.namenode.kerberos.internal.spnego.principal and dfs.journalnode.kerberos.internal.spnego.principal.'
      td_notes ''
    end
    entry do
      td_command 'dfs.web.authentication.kerberos.keytab'
      name 'The keytab file for the principal corresponding to dfs.web.authentication.kerberos.principal.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.kerberos.principal.pattern'
      name 'A client-side RegEx that can be configured to control allowed realms to authenticate with (useful in cross-realm env.)'
      td_notes '*'
    end
    entry do
      td_command 'dfs.namenode.avoid.read.stale.datanode'
      name 'Indicate whether or not to avoid reading from "stale" datanodes whose heartbeat messages have not been received by the namenode for more than a specified time interval. Stale datanodes will be moved to the end of the node list returned for reading. See dfs.namenode.avoid.write.stale.datanode for a similar setting for writes.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.namenode.avoid.write.stale.datanode'
      name 'Indicate whether or not to avoid writing to "stale" datanodes whose heartbeat messages have not been received by the namenode for more than a specified time interval. Writes will avoid using stale datanodes unless more than a configured ratio (dfs.namenode.write.stale.datanode.ratio) of datanodes are marked as stale. See dfs.namenode.avoid.read.stale.datanode for a similar setting for reads.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.namenode.stale.datanode.interval'
      name 'Default time interval for marking a datanode as "stale", i.e., if the namenode has not received heartbeat msg from a datanode for more than this time interval, the datanode will be marked and treated as "stale" by default. The stale interval cannot be too small since otherwise this may cause too frequent change of stale states. We thus set a minimum stale interval value (the default value is 3 times of heartbeat interval) and guarantee that the stale interval cannot be less than the minimum value. A stale data node is avoided during lease/block recovery. It can be conditionally avoided for reads (see dfs.namenode.avoid.read.stale.datanode) and for writes (see dfs.namenode.avoid.write.stale.datanode).'
      td_notes '30000'
    end
    entry do
      td_command 'dfs.namenode.write.stale.datanode.ratio'
      name 'When the ratio of number stale datanodes to total datanodes marked is greater than this ratio, stop avoiding writing to stale nodes so as to prevent causing hotspots.'
      td_notes '0.5f'
    end
    entry do
      td_command 'dfs.namenode.invalidate.work.pct.per.iteration'
      name '*Note*: Advanced property. Change with caution. This determines the percentage amount of block invalidations (deletes) to do over a single DN heartbeat deletion command. The final deletion count is determined by applying this percentage to the number of live nodes in the system. The resultant number is the number of blocks from the deletion list chosen for proper invalidation over a single heartbeat of a single DN. Value should be a positive, non-zero percentage in float notation (X.Yf), with 1.0f meaning 100%.'
      td_notes '0.32f'
    end
    entry do
      td_command 'dfs.namenode.replication.work.multiplier.per.iteration'
      name '*Note*: Advanced property. Change with caution. This determines the total amount of block transfers to begin in parallel at a DN, for replication, when such a command list is being sent over a DN heartbeat by the NN. The actual number is obtained by multiplying this multiplier with the total number of live nodes in the cluster. The result number is the number of blocks to begin transfers immediately for, per DN heartbeat. This number can be any positive, non-zero integer.'
      td_notes '2'
    end
    entry do
      td_command 'nfs.server.port'
      name 'Specify the port number used by Hadoop NFS.'
      td_notes '2049'
    end
    entry do
      td_command 'nfs.mountd.port'
      name 'Specify the port number used by Hadoop mount daemon.'
      td_notes '4242'
    end
    entry do
      td_command 'nfs.dump.dir'
      name 'This directory is used to temporarily save out-of-order writes before writing to HDFS. For each file, the out-of-order writes are dumped after they are accumulated to exceed certain threshold (e.g., 1MB) in memory. One needs to make sure the directory has enough space.'
      td_notes '/tmp/.hdfs-nfs'
    end
    entry do
      td_command 'nfs.rtmax'
      name 'This is the maximum size in bytes of a READ request supported by the NFS gateway. If you change this, make sure you also update the nfs mount\'s rsize(add rsize='
      td_notes 'of bytes to the mount directive).                                                                                                                                                                                                                                                                                                                                                 # 1048576'
    end
    entry do
      td_command 'nfs.wtmax'
      name 'This is the maximum size in bytes of a WRITE request supported by the NFS gateway. If you change this, make sure you also update the nfs mount\'s wsize(add wsize='
      td_notes 'of bytes to the mount directive).                                                                                                                                                                                                                                                                                                                                                 # 1048576'
    end
    entry do
      td_command 'nfs.keytab.file'
      name '*Note*: Advanced property. Change with caution. This is the path to the keytab file for the hdfs-nfs gateway. This is required when the cluster is kerberized.'
      td_notes ''
    end
    entry do
      td_command 'nfs.kerberos.principal'
      name '*Note*: Advanced property. Change with caution. This is the name of the kerberos principal. This is required when the cluster is kerberized.It must be of this format: nfs-gateway-user/nfs-gateway-host@kerberos-realm'
      td_notes ''
    end
    entry do
      td_command 'nfs.allow.insecure.ports'
      name 'When set to false, client connections originating from unprivileged ports (those above 1023) will be rejected. This is to ensure that clients connecting to this NFS Gateway must have had root privilege on the machine where they\'re connecting from.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.webhdfs.enabled'
      name 'Enable WebHDFS (REST API) in Namenodes and Datanodes.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'hadoop.fuse.connection.timeout'
      name 'The minimum number of seconds that we\'ll cache libhdfs connection objects in fuse_dfs. Lower values will result in lower memory consumption; higher values may speed up access by avoiding the overhead of creating new connection objects.'
      td_notes '300'
    end
    entry do
      td_command 'hadoop.fuse.timer.period'
      name 'The number of seconds between cache expiry checks in fuse_dfs. Lower values will result in fuse_dfs noticing changes to Kerberos ticket caches more quickly.'
      td_notes '5'
    end
    entry do
      td_command 'dfs.metrics.percentiles.intervals'
      name 'Comma-delimited set of integers denoting the desired rollover intervals (in seconds) for percentile latency metrics on the Namenode and Datanode. By default, percentile latency metrics are disabled.'
      td_notes ''
    end
    entry do
      td_command 'hadoop.user.group.metrics.percentiles.intervals'
      name 'A comma-separated list of the granularity in seconds for the metrics which describe the 50/75/90/95/99th percentile latency for group resolution in milliseconds. By default, percentile latency metrics are disabled.'
      td_notes ''
    end
    entry do
      td_command 'dfs.encrypt.data.transfer'
      name 'Whether or not actual block data that is read/written from/to HDFS should be encrypted on the wire. This only needs to be set on the NN and DNs, clients will deduce this automatically. It is possible to override this setting per connection by specifying custom logic via dfs.trustedchannel.resolver.class.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.encrypt.data.transfer.algorithm'
      name 'This value may be set to either "3des" or "rc4". If nothing is set, then the configured JCE default on the system is used (usually 3DES.) It is widely believed that 3DES is more cryptographically secure, but RC4 is substantially faster. Note that if AES is supported by both the client and server then this encryption algorithm will only be used to initially transfer keys for AES. (See dfs.encrypt.data.transfer.cipher.suites.)'
      td_notes ''
    end
    entry do
      td_command 'dfs.encrypt.data.transfer.cipher.suites'
      name 'This value may be either undefined or AES/CTR/NoPadding. If defined, then dfs.encrypt.data.transfer uses the specified cipher suite for data encryption. If not defined, then only the algorithm specified in dfs.encrypt.data.transfer.algorithm is used. By default, the property is not defined.'
      td_notes ''
    end
    entry do
      td_command 'dfs.encrypt.data.transfer.cipher.key.bitlength'
      name 'The key bitlength negotiated by dfsclient and datanode for encryption. This value may be set to either 128, 192 or 256.'
      td_notes '128'
    end
    entry do
      td_command 'dfs.trustedchannel.resolver.class'
      name 'TrustedChannelResolver is used to determine whether a channel is trusted for plain data transfer. The TrustedChannelResolver is invoked on both client and server side. If the resolver indicates that the channel is trusted, then the data transfer will not be encrypted even if dfs.encrypt.data.transfer is set to true. The default implementation returns false indicating that the channel is not trusted.'
      td_notes ''
    end
    entry do
      td_command 'dfs.data.transfer.protection'
      name 'A comma-separated list of SASL protection values used for secured connections to the DataNode when reading or writing block data. Possible values are authentication, integrity and privacy. authentication means authentication only and no integrity or privacy; integrity implies authentication and integrity are enabled; and privacy implies all of authentication, integrity and privacy are enabled. If dfs.encrypt.data.transfer is set to true, then it supersedes the setting for dfs.data.transfer.protection and enforces that all connections must use a specialized encrypted SASL handshake. This property is ignored for connections to a DataNode listening on a privileged port. In this case, it is assumed that the use of a privileged port establishes sufficient trust.'
      td_notes ''
    end
    entry do
      td_command 'dfs.data.transfer.saslproperties.resolver.class'
      name 'SaslPropertiesResolver used to resolve the QOP used for a connection to the DataNode when reading or writing block data. If not specified, the value of hadoop.security.saslproperties.resolver.class is used as the default value.'
      td_notes ''
    end
    entry do
      td_command 'dfs.datanode.hdfs-blocks-metadata.enabled'
      name 'Boolean which enables backend datanode-side support for the experimental DistributedFileSystem'
      td_notes 'getFileVBlockStorageLocations API.                                                                                                                                                                                                                                                                                                                                                # FALSE'
    end
    entry do
      td_command 'dfs.client.file-block-storage-locations.num-threads'
      name 'Number of threads used for making parallel RPCs in DistributedFileSystem'
      td_notes 'getFileBlockStorageLocations().                                                                                                                                                                                                                                                                                                                                                   # 10'
    end
    entry do
      td_command 'dfs.client.file-block-storage-locations.timeout.millis'
      name 'Timeout (in milliseconds) for the parallel RPCs made in DistributedFileSystem'
      td_notes 'getFileBlockStorageLocations().                                                                                                                                                                                                                                                                                                                                                   # 1000'
    end
    entry do
      td_command 'dfs.journalnode.rpc-address'
      name 'The JournalNode RPC server address and port.'
      td_notes '0.0.0.0:8485'
    end
    entry do
      td_command 'dfs.journalnode.http-address'
      name 'The address and port the JournalNode HTTP server listens on. If the port is 0 then the server will start on a free port.'
      td_notes '0.0.0.0:8480'
    end
    entry do
      td_command 'dfs.journalnode.https-address'
      name 'The address and port the JournalNode HTTPS server listens on. If the port is 0 then the server will start on a free port.'
      td_notes '0.0.0.0:8481'
    end
    entry do
      td_command 'dfs.namenode.audit.loggers'
      name 'List of classes implementing audit loggers that will receive audit events. These should be implementations of org.apache.hadoop.hdfs.server.namenode.AuditLogger. The special value "default" can be used to reference the default audit logger, which uses the configured log system. Installing custom audit loggers may affect the performance and stability of the NameNode. Refer to the custom logger\'s documentation for more details.'
      td_notes 'default'
    end
    entry do
      td_command 'dfs.datanode.available-space-volume-choosing-policy.balanced-space-threshold'
      name 'Only used when the dfs.datanode.fsdataset.volume.choosing.policy is set to org.apache.hadoop.hdfs.server.datanode.fsdataset.AvailableSpaceVolumeChoosingPolicy. This setting controls how much DN volumes are allowed to differ in terms of bytes of free disk space before they are considered imbalanced. If the free space of all the volumes are within this range of each other, the volumes will be considered balanced and block assignments will be done on a pure round robin basis.'
      td_notes '10737418240'
    end
    entry do
      td_command 'dfs.datanode.available-space-volume-choosing-policy.balanced-space-preference-fraction'
      name 'Only used when the dfs.datanode.fsdataset.volume.choosing.policy is set to org.apache.hadoop.hdfs.server.datanode.fsdataset.AvailableSpaceVolumeChoosingPolicy. This setting controls what percentage of new block allocations will be sent to volumes with more available disk space than others. This setting should be in the range 0.0 - 1.0, though in practice 0.5 - 1.0, since there should be no reason to prefer that volumes with less available disk space receive more block allocations.'
      td_notes '0.75f'
    end
    entry do
      td_command 'dfs.namenode.edits.noeditlogchannelflush'
      name 'Specifies whether to flush edit log file channel. When set, expensive FileChannel'
      td_notes 'force calls are skipped and synchronous disk writes are enabled instead by opening the edit log file with RandomAccessFile("rws") flags. This can significantly improve the performance of edit log writes on the Windows platform. Note that the behavior of the "rws" flags is platform and hardware specific and might not provide the same level of guarantees as FileChannel # force. For example, the write will skip the disk-cache on SAS and SCSI devices while it might not on SATA devices. This is an expert level setting, change with caution. # FALSE'
    end
    entry do
      td_command 'dfs.client.cache.drop.behind.writes'
      name 'Just like dfs.datanode.drop.cache.behind.writes, this setting causes the page cache to be dropped behind HDFS writes, potentially freeing up more memory for other uses. Unlike dfs.datanode.drop.cache.behind.writes, this is a client-side setting rather than a setting for the entire datanode. If present, this setting will override the DataNode default. If the native libraries are not available to the DataNode, this configuration has no effect.'
      td_notes ''
    end
    entry do
      td_command 'dfs.client.cache.drop.behind.reads'
      name 'Just like dfs.datanode.drop.cache.behind.reads, this setting causes the page cache to be dropped behind HDFS reads, potentially freeing up more memory for other uses. Unlike dfs.datanode.drop.cache.behind.reads, this is a client-side setting rather than a setting for the entire datanode. If present, this setting will override the DataNode default. If the native libraries are not available to the DataNode, this configuration has no effect.'
      td_notes ''
    end
    entry do
      td_command 'dfs.client.cache.readahead'
      name 'When using remote reads, this setting causes the datanode to read ahead in the block file using posix_fadvise, potentially decreasing I/O wait times. Unlike dfs.datanode.readahead.bytes, this is a client-side setting rather than a setting for the entire datanode. If present, this setting will override the DataNode default. When using local reads, this setting determines how much readahead we do in BlockReaderLocal. If the native libraries are not available to the DataNode, this configuration has no effect.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.enable.retrycache'
      name 'This enables the retry cache on the namenode. Namenode tracks for non-idempotent requests the corresponding response. If a client retries the request, the response from the retry cache is sent. Such operations are tagged with annotation @AtMostOnce in namenode protocols. It is recommended that this flag be set to true. Setting it to false, will result in clients getting failure responses to retried request. This flag must be enabled in HA setup for transparent fail-overs. The entries in the cache have expiration time configurable using dfs.namenode.retrycache.expirytime.millis.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.namenode.retrycache.expirytime.millis'
      name 'The time for which retry cache entries are retained.'
      td_notes '600000'
    end
    entry do
      td_command 'dfs.namenode.retrycache.heap.percent'
      name 'This parameter configures the heap size allocated for retry cache (excluding the response cached). This corresponds to approximately 4096 entries for every 64MB of namenode process java heap size. Assuming retry cache entry expiration time (configured using dfs.namenode.retrycache.expirytime.millis) of 10 minutes, this enables retry cache to support 7 operations per second sustained for 10 minutes. As the heap size is increased, the operation rate linearly increases.'
      td_notes '0.03f'
    end
    entry do
      td_command 'dfs.client.mmap.enabled'
      name 'If this is set to false, the client won\'t attempt to perform memory-mapped reads.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.client.mmap.cache.size'
      name 'When zero-copy reads are used, the DFSClient keeps a cache of recently used memory mapped regions. This parameter controls the maximum number of entries that we will keep in that cache. The larger this number is, the more file descriptors we will potentially use for memory-mapped files. mmaped files also use virtual address space. You may need to increase your ulimit virtual address space limits before increasing the client mmap cache size. Note that you can still do zero-copy reads when this size is set to 0.'
      td_notes '256'
    end
    entry do
      td_command 'dfs.client.mmap.cache.timeout.ms'
      name 'The minimum length of time that we will keep an mmap entry in the cache between uses. If an entry is in the cache longer than this, and nobody uses it, it will be removed by a background thread.'
      td_notes '3600000'
    end
    entry do
      td_command 'dfs.client.mmap.retry.timeout.ms'
      name 'The minimum amount of time that we will wait before retrying a failed mmap operation.'
      td_notes '300000'
    end
    entry do
      td_command 'dfs.client.short.circuit.replica.stale.threshold.ms'
      name 'The maximum amount of time that we will consider a short-circuit replica to be valid, if there is no communication from the DataNode. After this time has elapsed, we will re-fetch the short-circuit replica even if it is in the cache.'
      td_notes '1800000'
    end
    entry do
      td_command 'dfs.namenode.path.based.cache.block.map.allocation.percent'
      name 'The percentage of the Java heap which we will allocate to the cached blocks map. The cached blocks map is a hash map which uses chained hashing. Smaller maps may be accessed more slowly if the number of cached blocks is large; larger maps will consume more memory.'
      td_notes '0.25'
    end
    entry do
      td_command 'dfs.datanode.max.locked.memory'
      name 'The amount of memory in bytes to use for caching of block replicas in memory on the datanode. The datanode\'s maximum locked memory soft ulimit (RLIMIT_MEMLOCK) must be set to at least this value, else the datanode will abort on startup. By default, this parameter is set to 0, which disables in-memory caching. If the native libraries are not available to the DataNode, this configuration has no effect.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.namenode.list.cache.directives.num.responses'
      name 'This value controls the number of cache directives that the NameNode will send over the wire in response to a listDirectives RPC.'
      td_notes '100'
    end
    entry do
      td_command 'dfs.namenode.list.cache.pools.num.responses'
      name 'This value controls the number of cache pools that the NameNode will send over the wire in response to a listPools RPC.'
      td_notes '100'
    end
    entry do
      td_command 'dfs.namenode.path.based.cache.refresh.interval.ms'
      name 'The amount of milliseconds between subsequent path cache rescans. Path cache rescans are when we calculate which blocks should be cached, and on what datanodes. By default, this parameter is set to 30 seconds.'
      td_notes '30000'
    end
    entry do
      td_command 'dfs.namenode.path.based.cache.retry.interval.ms'
      name 'When the NameNode needs to uncache something that is cached, or cache something that is not cached, it must direct the DataNodes to do so by sending a DNA_CACHE or DNA_UNCACHE command in response to a DataNode heartbeat. This parameter controls how frequently the NameNode will resend these commands.'
      td_notes '30000'
    end
    entry do
      td_command 'dfs.datanode.fsdatasetcache.max.threads.per.volume'
      name 'The maximum number of threads per volume to use for caching new data on the datanode. These threads consume both I/O and CPU. This can affect normal datanode operations.'
      td_notes '4'
    end
    entry do
      td_command 'dfs.cachereport.intervalMsec'
      name 'Determines cache reporting interval in milliseconds. After this amount of time, the DataNode sends a full report of its cache state to the NameNode. The NameNode uses the cache report to update its map of cached blocks to DataNode locations. This configuration has no effect if in-memory caching has been disabled by setting dfs.datanode.max.locked.memory to 0 (which is the default). If the native libraries are not available to the DataNode, this configuration has no effect.'
      td_notes '10000'
    end
    entry do
      td_command 'dfs.namenode.edit.log.autoroll.multiplier.threshold'
      name 'Determines when an active namenode will roll its own edit log. The actual threshold (in number of edits) is determined by multiplying this value by dfs.namenode.checkpoint.txns. This prevents extremely large edit files from accumulating on the active namenode, which can cause timeouts during namenode startup and pose an administrative hassle. This behavior is intended as a failsafe for when the standby or secondary namenode fail to roll the edit log by the normal checkpoint threshold.'
      td_notes '2.0'
    end
    entry do
      td_command 'dfs.namenode.edit.log.autoroll.check.interval.ms'
      name 'How often an active namenode will check if it needs to roll its edit log, in milliseconds.'
      td_notes '300000'
    end
    entry do
      td_command 'dfs.webhdfs.user.provider.user.pattern'
      name 'Valid pattern for user and group names for webhdfs, it must be a valid java regex.'
      td_notes '^[A-Za-z_][A-Za-z0-9._-]*[$]?$'
    end
    entry do
      td_command 'dfs.client.context'
      name 'The name of the DFSClient context that we should use. Clients that share a context share a socket cache and short-circuit cache, among other things. You should only change this if you don\'t want to share with another set of threads.'
      td_notes 'default'
    end
    entry do
      td_command 'dfs.client.read.shortcircuit'
      name 'This configuration parameter turns on short-circuit local reads.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.client.socket.send.buffer.size'
      name 'Socket send buffer size for a write pipeline in DFSClient side. This may affect TCP connection throughput. If it is set to zero or negative value, no buffer size will be set explicitly, thus enable tcp auto-tuning on some system.'
      td_notes '131072'
    end
    entry do
      td_command 'dfs.domain.socket.path'
      name 'Optional. This is a path to a UNIX domain socket that will be used for communication between the DataNode and local HDFS clients. If the string "_PORT" is present in this path, it will be replaced by the TCP port of the DataNode.'
      td_notes ''
    end
    entry do
      td_command 'dfs.client.read.shortcircuit.skip.checksum'
      name 'If this configuration parameter is set, short-circuit local reads will skip checksums. This is normally not recommended, but it may be useful for special setups. You might consider using this if you are doing your own checksumming outside of HDFS.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.client.read.shortcircuit.streams.cache.size'
      name 'The DFSClient maintains a cache of recently opened file descriptors. This parameter controls the size of that cache. Setting this higher will use more file descriptors, but potentially provide better performance on workloads involving lots of seeks.'
      td_notes '256'
    end
    entry do
      td_command 'dfs.client.read.shortcircuit.streams.cache.expiry.ms'
      name 'This controls the minimum amount of time file descriptors need to sit in the client cache context before they can be closed for being inactive for too long.'
      td_notes '300000'
    end
    entry do
      td_command 'dfs.datanode.shared.file.descriptor.paths'
      name 'Comma separated paths to the directory on which shared memory segments are created. The client and the DataNode exchange information via this shared memory segment. It tries paths in order until creation of shared memory segment succeeds.'
      td_notes '/dev/shm,/tmp'
    end
    entry do
      td_command 'dfs.client.use.legacy.blockreader.local'
      name 'Legacy short-circuit reader implementation based on HDFS-2246 is used if this configuration parameter is true. This is for the platforms other than Linux where the new implementation based on HDFS-347 is not available.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.block.local-path-access.user'
      name 'Comma separated list of the users allowd to open block files on legacy short-circuit local read.'
      td_notes ''
    end
    entry do
      td_command 'dfs.client.domain.socket.data.traffic'
      name 'This control whether we will try to pass normal data traffic over UNIX domain socket rather than over TCP socket on node-local data transfer. This is currently experimental and turned off by default.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.namenode.reject-unresolved-dn-topology-mapping'
      name 'If the value is set to true, then namenode will reject datanode registration if the topology mapping for a datanode is not resolved and NULL is returned (script defined by net.topology.script.file.name fails to execute). Otherwise, datanode will be registered and the default rack will be assigned as the topology path. Topology paths are important for data resiliency, since they define fault domains. Thus it may be unwanted behavior to allow datanode registration with the default rack if the resolving topology failed.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.client.slow.io.warning.threshold.ms'
      name 'The threshold in milliseconds at which we will log a slow io warning in a dfsclient. By default, this parameter is set to 30000 milliseconds (30 seconds).'
      td_notes '30000'
    end
    entry do
      td_command 'dfs.datanode.slow.io.warning.threshold.ms'
      name 'The threshold in milliseconds at which we will log a slow io warning in a datanode. By default, this parameter is set to 300 milliseconds.'
      td_notes '300'
    end
    entry do
      td_command 'dfs.namenode.xattrs.enabled'
      name 'Whether support for extended attributes is enabled on the NameNode.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.namenode.fs-limits.max-xattrs-per-inode'
      name 'Maximum number of extended attributes per inode.'
      td_notes '32'
    end
    entry do
      td_command 'dfs.namenode.fs-limits.max-xattr-size'
      name 'The maximum combined size of the name and value of an extended attribute in bytes.'
      td_notes '16384'
    end
    entry do
      td_command 'dfs.namenode.write-lock-reporting-threshold-ms'
      name 'When a write lock is held on the namenode for a long time, this will be logged as the lock is released. This sets how long the lock must be held for logging to occur.'
      td_notes '5000'
    end
    entry do
      td_command 'dfs.namenode.read-lock-reporting-threshold-ms'
      name 'When a read lock is held on the namenode for a long time, this will be logged as the lock is released. This sets how long the lock must be held for logging to occur.'
      td_notes '5000'
    end
    entry do
      td_command 'dfs.namenode.lock.detailed-metrics.enabled'
      name 'If true, the namenode will keep track of how long various operations hold the Namesystem lock for and emit this as metrics. These metrics have names of the form FSN(Read|Write)LockNanosOperationName, where OperationName denotes the name of the operation that initiated the lock hold (this will be OTHER for certain uncategorized operations) and they export the hold time values in nanoseconds.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.namenode.fslock.fair'
      name 'If this is true, the FS Namesystem lock will be used in Fair mode, which will help to prevent writer threads from being starved, but can provide lower lock throughput. See java.util.concurrent.locks.ReentrantReadWriteLock for more information on fair/non-fair locks.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.namenode.startup.delay.block.deletion.sec'
      name 'The delay in seconds at which we will pause the blocks deletion after Namenode startup. By default it\'s disabled. In the case a directory has large number of directories and files are deleted, suggested delay is one hour to give the administrator enough time to notice large number of pending deletion blocks and take corrective action.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.namenode.list.encryption.zones.num.responses'
      name 'When listing encryption zones, the maximum number of zones that will be returned in a batch. Fetching the list incrementally in batches improves namenode performance.'
      td_notes '100'
    end
    entry do
      td_command 'dfs.namenode.inotify.max.events.per.rpc'
      name 'Maximum number of events that will be sent to an inotify client in a single RPC response. The default value attempts to amortize away the overhead for this RPC while avoiding huge memory requirements for the client and NameNode (1000 events should consume no more than 1 MB.)'
      td_notes '1000'
    end
    entry do
      td_command 'dfs.user.home.dir.prefix'
      name 'The directory to prepend to user name to get the user\'s home direcotry.'
      td_notes '/user'
    end
    entry do
      td_command 'dfs.datanode.cache.revocation.timeout.ms'
      name 'When the DFSClient reads from a block file which the DataNode is caching, the DFSClient can skip verifying checksums. The DataNode will keep the block file in cache until the client is done. If the client takes an unusually long time, though, the DataNode may need to evict the block file from the cache anyway. This value controls how long the DataNode will wait for the client to release a replica that it is reading without checksums.'
      td_notes '900000'
    end
    entry do
      td_command 'dfs.datanode.cache.revocation.polling.ms'
      name 'How often the DataNode should poll to see if the clients have stopped using a replica that the DataNode wants to uncache.'
      td_notes '500'
    end
    entry do
      td_command 'dfs.datanode.block.id.layout.upgrade.threads'
      name 'The number of threads to use when creating hard links from current to previous blocks during upgrade of a DataNode to block ID-based block layout (see HDFS-6482 for details on the layout).'
      td_notes '12'
    end
    entry do
      td_command 'dfs.encryption.key.provider.uri'
      name 'The KeyProvider to use when interacting with encryption keys used when reading and writing to an encryption zone.'
      td_notes ''
    end
    entry do
      td_command 'dfs.storage.policy.enabled'
      name 'Allow users to change the storage policy on files and directories.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.namenode.legacy-oiv-image.dir'
      name 'Determines where to save the namespace in the old fsimage format during checkpointing by standby NameNode or SecondaryNameNode. Users can dump the contents of the old format fsimage by oiv_legacy command. If the value is not specified, old format fsimage will not be saved in checkpoint.'
      td_notes ''
    end
    entry do
      td_command 'dfs.namenode.top.enabled'
      name 'Enable nntop: reporting top users on namenode'
      td_notes 'TRUE'
    end
    entry do
      td_command 'dfs.namenode.top.window.num.buckets'
      name 'Number of buckets in the rolling window implementation of nntop'
      td_notes '10'
    end
    entry do
      td_command 'dfs.namenode.top.num.users'
      name 'Number of top users returned by the top tool'
      td_notes '10'
    end
    entry do
      td_command 'dfs.namenode.top.windows.minutes'
      name 'comma separated list of nntop reporting periods in minutes'
      td_notes '1,5,25'
    end
    entry do
      td_command 'dfs.namenode.blocks.per.postponedblocks.rescan'
      name 'Number of blocks to rescan for each iteration of postponedMisreplicatedBlocks.'
      td_notes '10000'
    end
    entry do
      td_command 'dfs.datanode.block-pinning.enabled'
      name 'Whether pin blocks on favored DataNode.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.datanode.bp-ready.timeout'
      name 'The maximum wait time for datanode to be ready before failing the received request. Setting this to 0 fails requests right away if the datanode is not yet registered with the namenode. This wait time reduces initial request failures after datanode restart.'
      td_notes '20'
    end
    entry do
      td_command 'dfs.balancer.keytab.enabled'
      name 'Set to true to enable login using a keytab for Kerberized Hadoop.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.balancer.address'
      name 'The hostname used for a keytab based Kerberos login. Keytab based login can be enabled with dfs.balancer.keytab.enabled.'
      td_notes '0.0.0.0:0'
    end
    entry do
      td_command 'dfs.balancer.keytab.file'
      name 'The keytab file used by the Balancer to login as its service principal. The principal name is configured with dfs.balancer.kerberos.principal. Keytab based login can be enabled with dfs.balancer.keytab.enabled.'
      td_notes ''
    end
    entry do
      td_command 'dfs.balancer.kerberos.principal'
      name 'The Balancer principal. This is typically set to balancer/_HOST@REALM.TLD. The Balancer will substitute _HOST with its own fully qualified hostname at startup. The _HOST placeholder allows using the same configuration setting on different servers. Keytab based login can be enabled with dfs.balancer.keytab.enabled.'
      td_notes ''
    end
    entry do
      td_command 'dfs.balancer.block-move.timeout'
      name 'Maximum amount of time in milliseconds for a block to move. If this is set greater than 0, Balancer will stop waiting for a block move completion after this time. In typical clusters, a 3 to 5 minute timeout is reasonable. If timeout happens to a large proportion of block moves, this needs to be increased. It could also be that too much work is dispatched and many nodes are constantly exceeding the bandwidth limit as a result. In that case, other balancer parameters might need to be adjusted. It is disabled (0) by default.'
      td_notes '0'
    end
    entry do
      td_command 'dfs.balancer.max-no-move-interval'
      name 'If this specified amount of time has elapsed and no block has been moved out of a source DataNode, on more effort will be made to move blocks out of this DataNode in the current Balancer iteration.'
      td_notes '60000'
    end
    entry do
      td_command 'dfs.lock.suppress.warning.interval'
      name 'Instrumentation reporting long critical sections will suppress consecutive warnings within this interval.'
      td_notes '10s'
    end
    entry do
      td_command 'dfs.namenode.quota.init-threads'
      name 'The number of concurrent threads to be used in quota initialization. The speed of quota initialization also affects the namenode fail-over latency. If the size of name space is big, try increasing this.'
      td_notes '4'
    end
    entry do
      td_command 'dfs.reformat.disabled'
      name 'Disable reformat of NameNode. If it\'s value is set to "true" and metadata directories already exist then attempt to format NameNode will throw NameNodeFormatException.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'dfs.datanode.transfer.socket.send.buffer.size'
      name 'Socket send buffer size for DataXceiver (mirroring packets to downstream in pipeline). This may affect TCP connection throughput. If it is set to zero or negative value, no buffer size will be set explicitly, thus enable tcp auto-tuning on some system.'
      td_notes '131072'
    end
    entry do
      td_command 'dfs.datanode.transfer.socket.recv.buffer.size'
      name 'Socket receive buffer size for DataXceiver (receiving packets from client during block writing). This may affect TCP connection throughput. If it is set to zero or negative value, no buffer size will be set explicitly, thus enable tcp auto-tuning on some system.'
      td_notes '131072'
    end
  end
end
