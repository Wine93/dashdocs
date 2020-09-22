cheatsheet do
  title 'Hadoop Yarn 2.7.7'
  docset_file_name 'Hadoop_Yarn_2.7.7'
  keyword 'hadoop'
  source_url 'cheat.kapeli.com'

  category do
    id 'yarn'
    entry do
      td_command 'yarn.ipc.client.factory.class'
      name 'Factory to create client IPC classes.'
      td_notes ''
    end
    entry do
      td_command 'yarn.ipc.server.factory.class'
      name 'Factory to create server IPC classes.'
      td_notes ''
    end
    entry do
      td_command 'yarn.ipc.record.factory.class'
      name 'Factory to create serializeable records.'
      td_notes ''
    end
    entry do
      td_command 'yarn.ipc.rpc.class'
      name 'RPC class implementation'
      td_notes 'org.apache.hadoop.yarn.ipc.HadoopYarnProtoRPC'
    end
    entry do
      td_command 'yarn.resourcemanager.hostname'
      name 'The hostname of the RM.'
      td_notes '0.0.0.0'
    end
    entry do
      td_command 'yarn.resourcemanager.address'
      name 'The address of the applications manager interface in the RM.'
      td_notes '${yarn.resourcemanager.hostname}:8032'
    end
    entry do
      td_command 'yarn.resourcemanager.bind-host'
      name 'The actual address the server will bind to. If this optional address is set, the RPC and webapp servers will bind to this address and the port specified in yarn.resourcemanager.address and yarn.resourcemanager.webapp.address, respectively. This is most useful for making RM listen to all interfaces by setting to 0.0.0.0.'
      td_notes ''
    end
    entry do
      td_command 'yarn.resourcemanager.client.thread-count'
      name 'The number of threads used to handle applications manager requests.'
      td_notes '50'
    end
    entry do
      td_command 'yarn.resourcemanager.amlauncher.thread-count'
      name 'Number of threads used to launch/cleanup AM.'
      td_notes '50'
    end
    entry do
      td_command 'yarn.resourcemanager.nodemanager-connect-retries'
      name 'Retry times to connect with NM.'
      td_notes '10'
    end
    entry do
      td_command 'yarn.dispatcher.drain-events.timeout'
      name 'Timeout in milliseconds when YARN dispatcher tries to drain the events. Typically, this happens when service is stopping. e.g. RM drains the ATS events dispatcher when stopping.'
      td_notes '300000'
    end
    entry do
      td_command 'yarn.am.liveness-monitor.expiry-interval-ms'
      name 'The expiry interval for application master reporting.'
      td_notes '600000'
    end
    entry do
      td_command 'yarn.resourcemanager.principal'
      name 'The Kerberos principal for the resource manager.'
      td_notes ''
    end
    entry do
      td_command 'yarn.resourcemanager.scheduler.address'
      name 'The address of the scheduler interface.'
      td_notes '${yarn.resourcemanager.hostname}:8030'
    end
    entry do
      td_command 'yarn.resourcemanager.scheduler.client.thread-count'
      name 'Number of threads to handle scheduler interface.'
      td_notes '50'
    end
    entry do
      td_command 'yarn.http.policy'
      name 'This configures the HTTP endpoint for Yarn Daemons.The following values are supported: - HTTP_ONLY : Service is provided only on http - HTTPS_ONLY : Service is provided only on https'
      td_notes 'HTTP_ONLY'
    end
    entry do
      td_command 'yarn.resourcemanager.webapp.address'
      name 'The http address of the RM web application.'
      td_notes '${yarn.resourcemanager.hostname}:8088'
    end
    entry do
      td_command 'yarn.resourcemanager.webapp.https.address'
      name 'The https adddress of the RM web application.'
      td_notes '${yarn.resourcemanager.hostname}:8090'
    end
    entry do
      td_command 'yarn.resourcemanager.resource-tracker.address'
      name ''
      td_notes '${yarn.resourcemanager.hostname}:8031'
    end
    entry do
      td_command 'yarn.acl.enable'
      name 'Are acls enabled.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.admin.acl'
      name 'ACL of who can be admin of the YARN cluster.'
      td_notes '*'
    end
    entry do
      td_command 'yarn.resourcemanager.admin.address'
      name 'The address of the RM admin interface.'
      td_notes '${yarn.resourcemanager.hostname}:8033'
    end
    entry do
      td_command 'yarn.resourcemanager.admin.client.thread-count'
      name 'Number of threads used to handle RM admin interface.'
      td_notes '1'
    end
    entry do
      td_command 'yarn.resourcemanager.connect.max-wait.ms'
      name 'Maximum time to wait to establish connection to ResourceManager.'
      td_notes '900000'
    end
    entry do
      td_command 'yarn.resourcemanager.connect.retry-interval.ms'
      name 'How often to try connecting to the ResourceManager.'
      td_notes '30000'
    end
    entry do
      td_command 'yarn.resourcemanager.am.max-attempts'
      name 'The maximum number of application attempts. It\'s a global setting for all application masters. Each application master can specify its individual maximum number of application attempts via the API, but the individual number cannot be more than the global upper bound. If it is, the resourcemanager will override it. The default number is set to 2, to allow at least one retry for AM.'
      td_notes '2'
    end
    entry do
      td_command 'yarn.resourcemanager.container.liveness-monitor.interval-ms'
      name 'How often to check that containers are still alive.'
      td_notes '600000'
    end
    entry do
      td_command 'yarn.resourcemanager.keytab'
      name 'The keytab for the resource manager.'
      td_notes '/etc/krb5.keytab'
    end
    entry do
      td_command 'yarn.resourcemanager.webapp.delegation-token-auth-filter.enabled'
      name 'Flag to enable override of the default kerberos authentication filter with the RM authentication filter to allow authentication using delegation tokens(fallback to kerberos if the tokens are missing). Only applicable when the http authentication type is kerberos.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'yarn.resourcemanager.webapp.cross-origin.enabled'
      name 'Flag to enable cross-origin (CORS) support in the RM. This flag requires the CORS filter initializer to be added to the filter initializers list in core-site.xml.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.nm.liveness-monitor.expiry-interval-ms'
      name 'How long to wait until a node manager is considered dead.'
      td_notes '600000'
    end
    entry do
      td_command 'yarn.resourcemanager.nodes.include-path'
      name 'Path to file with nodes to include.'
      td_notes ''
    end
    entry do
      td_command 'yarn.resourcemanager.nodes.exclude-path'
      name 'Path to file with nodes to exclude.'
      td_notes ''
    end
    entry do
      td_command 'yarn.resourcemanager.resource-tracker.client.thread-count'
      name 'Number of threads to handle resource tracker calls.'
      td_notes '50'
    end
    entry do
      td_command 'yarn.resourcemanager.scheduler.class'
      name 'The class to use as the resource scheduler.'
      td_notes 'org.apache.hadoop.yarn.server.resourcemanager.scheduler.capacity.CapacityScheduler'
    end
    entry do
      td_command 'yarn.scheduler.minimum-allocation-mb'
      name 'The minimum allocation for every container request at the RM, in MBs. Memory requests lower than this will throw a InvalidResourceRequestException.'
      td_notes '1024'
    end
    entry do
      td_command 'yarn.scheduler.maximum-allocation-mb'
      name 'The maximum allocation for every container request at the RM, in MBs. Memory requests higher than this will throw a InvalidResourceRequestException.'
      td_notes '8192'
    end
    entry do
      td_command 'yarn.scheduler.minimum-allocation-vcores'
      name 'The minimum allocation for every container request at the RM, in terms of virtual CPU cores. Requests lower than this will throw a InvalidResourceRequestException.'
      td_notes '1'
    end
    entry do
      td_command 'yarn.scheduler.maximum-allocation-vcores'
      name 'The maximum allocation for every container request at the RM, in terms of virtual CPU cores. Requests higher than this will throw a InvalidResourceRequestException.'
      td_notes '32'
    end
    entry do
      td_command 'yarn.resourcemanager.recovery.enabled'
      name 'Enable RM to recover state after starting. If true, then yarn.resourcemanager.store.class must be specified.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.resourcemanager.fail-fast'
      name 'Should RM fail fast if it encounters any errors. By defalt, it points to ${yarn.fail-fast}. Errors include: 1) exceptions when state-store write/read operations fails.'
      td_notes '${yarn.fail-fast}'
    end
    entry do
      td_command 'yarn.fail-fast'
      name 'Should YARN fail fast if it encounters any errors. This is a global config for all other components including RM,NM etc. If no value is set for component-specific config (e.g yarn.resourcemanager.fail-fast), this value will be the default.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.resourcemanager.work-preserving-recovery.enabled'
      name 'Enable RM work preserving recovery. This configuration is private to YARN for experimenting the feature.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'yarn.resourcemanager.work-preserving-recovery.scheduling-wait-ms'
      name 'Set the amount of time RM waits before allocating new containers on work-preserving-recovery. Such wait period gives RM a chance to settle down resyncing with NMs in the cluster on recovery, before assigning new containers to applications.'
      td_notes '10000'
    end
    entry do
      td_command 'yarn.resourcemanager.store.class'
      name 'The class to use as the persistent store. If org.apache.hadoop.yarn.server.resourcemanager.recovery.ZKRMStateStore is used, the store is implicitly fenced; meaning a single ResourceManager is able to use the store at any point in time. More details on this implicit fencing, along with setting up appropriate ACLs is discussed under yarn.resourcemanager.zk-state-store.root-node.acl.'
      td_notes 'org.apache.hadoop.yarn.server.resourcemanager.recovery.FileSystemRMStateStore'
    end
    entry do
      td_command 'yarn.resourcemanager.state-store.max-completed-applications'
      name 'The maximum number of completed applications RM state store keeps, less than or equals to ${yarn.resourcemanager.max-completed-applications}. By default, it equals to ${yarn.resourcemanager.max-completed-applications}. This ensures that the applications kept in the state store are consistent with the applications remembered in RM memory. Any values larger than ${yarn.resourcemanager.max-completed-applications} will be reset to ${yarn.resourcemanager.max-completed-applications}. Note that this value impacts the RM recovery performance.Typically, a smaller value indicates better performance on RM recovery.'
      td_notes '${yarn.resourcemanager.max-completed-applications}'
    end
    entry do
      td_command 'yarn.resourcemanager.zk-address'
      name 'Host:Port of the ZooKeeper server to be used by the RM. This must be supplied when using the ZooKeeper based implementation of the RM state store and/or embedded automatic failover in a HA setting.'
      td_notes ''
    end
    entry do
      td_command 'yarn.resourcemanager.zk-num-retries'
      name 'Number of times RM tries to connect to ZooKeeper.'
      td_notes '1000'
    end
    entry do
      td_command 'yarn.resourcemanager.zk-retry-interval-ms'
      name 'Retry interval in milliseconds when connecting to ZooKeeper. When HA is enabled, the value here is NOT used. It is generated automatically from yarn.resourcemanager.zk-timeout-ms and yarn.resourcemanager.zk-num-retries.'
      td_notes '1000'
    end
    entry do
      td_command 'yarn.resourcemanager.zk-state-store.parent-path'
      name 'Full path of the ZooKeeper znode where RM state will be stored. This must be supplied when using org.apache.hadoop.yarn.server.resourcemanager.recovery.ZKRMStateStore as the value for yarn.resourcemanager.store.class'
      td_notes '/rmstore'
    end
    entry do
      td_command 'yarn.resourcemanager.zk-timeout-ms'
      name 'ZooKeeper session timeout in milliseconds. Session expiration is managed by the ZooKeeper cluster itself, not by the client. This value is used by the cluster to determine when the client\'s session expires. Expirations happens when the cluster does not hear from the client within the specified session timeout period (i.e. no heartbeat).'
      td_notes '10000'
    end
    entry do
      td_command 'yarn.resourcemanager.zk-acl'
      name 'ACL\'s to be used for ZooKeeper znodes.'
      td_notes 'world:anyone:rwcda'
    end
    entry do
      td_command 'yarn.resourcemanager.zk-state-store.root-node.acl'
      name 'ACLs to be used for the root znode when using ZKRMStateStore in a HA scenario for fencing. ZKRMStateStore supports implicit fencing to allow a single ResourceManager write-access to the store. For fencing, the ResourceManagers in the cluster share read-write-admin privileges on the root node, but the Active ResourceManager claims exclusive create-delete permissions. By default, when this property is not set, we use the ACLs from yarn.resourcemanager.zk-acl for shared admin access and rm-address:random-number for username-based exclusive create-delete access. This property allows users to set ACLs of their choice instead of using the default mechanism. For fencing to work, the ACLs should be carefully set differently on each ResourceManger such that all the ResourceManagers have shared admin access and the Active ResourceManger takes over (exclusively) the create-delete access.'
      td_notes ''
    end
    entry do
      td_command 'yarn.resourcemanager.zk-auth'
      name 'Specify the auths to be used for the ACL\'s specified in both the yarn.resourcemanager.zk-acl and yarn.resourcemanager.zk-state-store.root-node.acl properties. This takes a comma-separated list of authentication mechanisms, each of the form \'scheme:auth\' (the same syntax used for the \'addAuth\' command in the ZK CLI).'
      td_notes ''
    end
    entry do
      td_command 'yarn.resourcemanager.fs.state-store.uri'
      name 'URI pointing to the location of the FileSystem path where RM state will be stored. This must be supplied when using org.apache.hadoop.yarn.server.resourcemanager.recovery.FileSystemRMStateStore as the value for yarn.resourcemanager.store.class'
      td_notes '${hadoop.tmp.dir}/yarn/system/rmstore'
    end
    entry do
      td_command 'yarn.resourcemanager.fs.state-store.retry-policy-spec'
      name 'hdfs client retry policy specification. hdfs client retry is always enabled. Specified in pairs of sleep-time and number-of-retries and (t0, n0), (t1, n1), ..., the first n0 retries sleep t0 milliseconds on average, the following n1 retries sleep t1 milliseconds on average, and so on.'
      td_notes '2000, 500'
    end
    entry do
      td_command 'yarn.resourcemanager.fs.state-store.num-retries'
      name 'the number of retries to recover from IOException in FileSystemRMStateStore.'
      td_notes '0'
    end
    entry do
      td_command 'yarn.resourcemanager.fs.state-store.retry-interval-ms'
      name 'Retry interval in milliseconds in FileSystemRMStateStore.'
      td_notes '1000'
    end
    entry do
      td_command 'yarn.resourcemanager.leveldb-state-store.path'
      name 'Local path where the RM state will be stored when using org.apache.hadoop.yarn.server.resourcemanager.recovery.LeveldbRMStateStore as the value for yarn.resourcemanager.store.class'
      td_notes '${hadoop.tmp.dir}/yarn/system/rmstore'
    end
    entry do
      td_command 'yarn.resourcemanager.leveldb-state-store.compaction-interval-secs'
      name 'The time in seconds between full compactions of the leveldb database. Setting the interval to zero disables the full compaction cycles.'
      td_notes '3600'
    end
    entry do
      td_command 'yarn.resourcemanager.ha.enabled'
      name 'Enable RM high-availability. When enabled, (1) The RM starts in the Standby mode by default, and transitions to the Active mode when prompted to. (2) The nodes in the RM ensemble are listed in yarn.resourcemanager.ha.rm-ids (3) The id of each RM either comes from yarn.resourcemanager.ha.id if yarn.resourcemanager.ha.id is explicitly specified or can be figured out by matching yarn.resourcemanager.address.{id} with local address (4) The actual physical addresses come from the configs of the pattern - {rpc-config}.{id}'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.resourcemanager.ha.automatic-failover.enabled'
      name 'Enable automatic failover. By default, it is enabled only when HA is enabled'
      td_notes 'TRUE'
    end
    entry do
      td_command 'yarn.resourcemanager.ha.automatic-failover.embedded'
      name 'Enable embedded automatic failover. By default, it is enabled only when HA is enabled. The embedded elector relies on the RM state store to handle fencing, and is primarily intended to be used in conjunction with ZKRMStateStore.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'yarn.resourcemanager.ha.automatic-failover.zk-base-path'
      name 'The base znode path to use for storing leader information, when using ZooKeeper based leader election.'
      td_notes '/yarn-leader-election'
    end
    entry do
      td_command 'yarn.resourcemanager.cluster-id'
      name 'Name of the cluster. In a HA setting, this is used to ensure the RM participates in leader election for this cluster and ensures it does not affect other clusters'
      td_notes ''
    end
    entry do
      td_command 'yarn.resourcemanager.ha.rm-ids'
      name 'The list of RM nodes in the cluster when HA is enabled. See description of yarn.resourcemanager.ha .enabled for full details on how this is used.'
      td_notes ''
    end
    entry do
      td_command 'yarn.resourcemanager.ha.id'
      name 'The id (string) of the current RM. When HA is enabled, this is an optional config. The id of current RM can be set by explicitly specifying yarn.resourcemanager.ha.id or figured out by matching yarn.resourcemanager.address.{id} with local address See description of yarn.resourcemanager.ha.enabled for full details on how this is used.'
      td_notes ''
    end
    entry do
      td_command 'yarn.client.failover-proxy-provider'
      name 'When HA is enabled, the class to be used by Clients, AMs and NMs to failover to the Active RM. It should extend org.apache.hadoop.yarn.client.RMFailoverProxyProvider'
      td_notes 'org.apache.hadoop.yarn.client.ConfiguredRMFailoverProxyProvider'
    end
    entry do
      td_command 'yarn.client.failover-max-attempts'
      name 'When HA is enabled, the max number of times FailoverProxyProvider should attempt failover. When set, this overrides the yarn.resourcemanager.connect.max-wait.ms. When not set, this is inferred from yarn.resourcemanager.connect.max-wait.ms.'
      td_notes ''
    end
    entry do
      td_command 'yarn.client.failover-sleep-base-ms'
      name 'When HA is enabled, the sleep base (in milliseconds) to be used for calculating the exponential delay between failovers. When set, this overrides the yarn.resourcemanager.connect.* settings. When not set, yarn.resourcemanager.connect.retry-interval.ms is used instead.'
      td_notes ''
    end
    entry do
      td_command 'yarn.client.failover-sleep-max-ms'
      name 'When HA is enabled, the maximum sleep time (in milliseconds) between failovers. When set, this overrides the yarn.resourcemanager.connect.* settings. When not set, yarn.resourcemanager.connect.retry-interval.ms is used instead.'
      td_notes ''
    end
    entry do
      td_command 'yarn.client.failover-retries'
      name 'When HA is enabled, the number of retries per attempt to connect to a ResourceManager. In other words, it is the ipc.client.connect.max.retries to be used during failover attempts'
      td_notes '0'
    end
    entry do
      td_command 'yarn.client.failover-retries-on-socket-timeouts'
      name 'When HA is enabled, the number of retries per attempt to connect to a ResourceManager on socket timeouts. In other words, it is the ipc.client.connect.max.retries.on.timeouts to be used during failover attempts'
      td_notes '0'
    end
    entry do
      td_command 'yarn.resourcemanager.max-completed-applications'
      name 'The maximum number of completed applications RM keeps.'
      td_notes '10000'
    end
    entry do
      td_command 'yarn.resourcemanager.delayed.delegation-token.removal-interval-ms'
      name 'Interval at which the delayed token removal thread runs'
      td_notes '30000'
    end
    entry do
      td_command 'yarn.resourcemanager.proxy-user-privileges.enabled'
      name 'If true, ResourceManager will have proxy-user privileges. Use case: In a secure cluster, YARN requires the user hdfs delegation-tokens to do localization and log-aggregation on behalf of the user. If this is set to true, ResourceManager is able to request new hdfs delegation tokens on behalf of the user. This is needed by long-running-service, because the hdfs tokens will eventually expire and YARN requires new valid tokens to do localization and log-aggregation. Note that to enable this use case, the corresponding HDFS NameNode has to configure ResourceManager as the proxy-user so that ResourceManager can itself ask for new tokens on behalf of the user when tokens are past their max-life-time.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.resourcemanager.am-rm-tokens.master-key-rolling-interval-secs'
      name 'Interval for the roll over for the master key used to generate application tokens'
      td_notes '86400'
    end
    entry do
      td_command 'yarn.resourcemanager.container-tokens.master-key-rolling-interval-secs'
      name 'Interval for the roll over for the master key used to generate container tokens. It is expected to be much greater than yarn.nm.liveness-monitor.expiry-interval-ms and yarn.resourcemanager.rm.container-allocation.expiry-interval-ms. Otherwise the behavior is undefined.'
      td_notes '86400'
    end
    entry do
      td_command 'yarn.resourcemanager.nodemanagers.heartbeat-interval-ms'
      name 'The heart-beat interval in milliseconds for every NodeManager in the cluster.'
      td_notes '1000'
    end
    entry do
      td_command 'yarn.resourcemanager.nodemanager.minimum.version'
      name 'The minimum allowed version of a connecting nodemanager. The valid values are NONE (no version checking), EqualToRM (the nodemanager\'s version is equal to or greater than the RM version), or a Version String.'
      td_notes 'NONE'
    end
    entry do
      td_command 'yarn.resourcemanager.scheduler.monitor.enable'
      name 'Enable a set of periodic monitors (specified in yarn.resourcemanager.scheduler.monitor.policies) that affect the scheduler.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.resourcemanager.scheduler.monitor.policies'
      name 'The list of SchedulingEditPolicy classes that interact with the scheduler. A particular module may be incompatible with the scheduler, other policies, or a configuration of either.'
      td_notes 'org.apache.hadoop.yarn.server.resourcemanager.monitor.capacity.ProportionalCapacityPreemptionPolicy'
    end
    entry do
      td_command 'yarn.resourcemanager.configuration.provider-class'
      name 'The class to use as the configuration provider. If org.apache.hadoop.yarn.LocalConfigurationProvider is used, the local configuration will be loaded. If org.apache.hadoop.yarn.FileSystemBasedConfigurationProvider is used, the configuration which will be loaded should be uploaded to remote File system first.'
      td_notes 'org.apache.hadoop.yarn.LocalConfigurationProvider'
    end
    entry do
      td_command 'yarn.resourcemanager.system-metrics-publisher.enabled'
      name 'The setting that controls whether yarn system metrics is published on the timeline server or not by RM.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.resourcemanager.system-metrics-publisher.dispatcher.pool-size'
      name 'Number of worker threads that send the yarn system metrics data.'
      td_notes '10'
    end
    entry do
      td_command 'yarn.nodemanager.hostname'
      name 'The hostname of the NM.'
      td_notes '0.0.0.0'
    end
    entry do
      td_command 'yarn.nodemanager.address'
      name 'The address of the container manager in the NM.'
      td_notes '${yarn.nodemanager.hostname}:0'
    end
    entry do
      td_command 'yarn.nodemanager.bind-host'
      name 'The actual address the server will bind to. If this optional address is set, the RPC and webapp servers will bind to this address and the port specified in yarn.nodemanager.address and yarn.nodemanager.webapp.address, respectively. This is most useful for making NM listen to all interfaces by setting to 0.0.0.0.'
      td_notes ''
    end
    entry do
      td_command 'yarn.nodemanager.admin-env'
      name 'Environment variables that should be forwarded from the NodeManager\'s environment to the container\'s.'
      td_notes 'MALLOC_ARENA_MAX=$MALLOC_ARENA_MAX'
    end
    entry do
      td_command 'yarn.nodemanager.env-whitelist'
      name 'Environment variables that containers may override rather than use NodeManager\'s default.'
      td_notes 'JAVA_HOME,HADOOP_COMMON_HOME,HADOOP_HDFS_HOME,HADOOP_CONF_DIR,HADOOP_YARN_HOME'
    end
    entry do
      td_command 'yarn.nodemanager.container-executor.class'
      name 'who will execute(launch) the containers.'
      td_notes 'org.apache.hadoop.yarn.server.nodemanager.DefaultContainerExecutor'
    end
    entry do
      td_command 'yarn.nodemanager.container-manager.thread-count'
      name 'Number of threads container manager uses.'
      td_notes '20'
    end
    entry do
      td_command 'yarn.nodemanager.delete.thread-count'
      name 'Number of threads used in cleanup.'
      td_notes '4'
    end
    entry do
      td_command 'yarn.nodemanager.delete.debug-delay-sec'
      name 'Number of seconds after an application finishes before the nodemanager\'s DeletionService will delete the application\'s localized file directory and log directory. To diagnose Yarn application problems, set this property\'s value large enough (for example, to 600 = 10 minutes) to permit examination of these directories. After changing the property\'s value, you must restart the nodemanager in order for it to have an effect. The roots of Yarn applications\' work directories is configurable with the yarn.nodemanager.local-dirs property (see below), and the roots of the Yarn applications\' log directories is configurable with the yarn.nodemanager.log-dirs property (see also below).'
      td_notes '0'
    end
    entry do
      td_command 'yarn.nodemanager.keytab'
      name 'Keytab for NM.'
      td_notes '/etc/krb5.keytab'
    end
    entry do
      td_command 'yarn.nodemanager.local-dirs'
      name 'List of directories to store localized files in. An application\'s localized file directory will be found in: ${yarn.nodemanager.local-dirs}/usercache/${user}/appcache/application_${appid}. Individual containers\' work directories, called container_${contid}, will be subdirectories of this.'
      td_notes '${hadoop.tmp.dir}/nm-local-dir'
    end
    entry do
      td_command 'yarn.nodemanager.local-cache.max-files-per-directory'
      name 'It limits the maximum number of files which will be localized in a single local directory. If the limit is reached then sub-directories will be created and new files will be localized in them. If it is set to a value less than or equal to 36 [which are sub-directories (0-9 and then a-z)] then NodeManager will fail to start. For example; [for public cache] if this is configured with a value of 40 ( 4 files + 36 sub-directories) and the local-dir is "/tmp/local-dir1" then it will allow 4 files to be created directly inside "/tmp/local-dir1/filecache". For files that are localized further it will create a sub-directory "0" inside "/tmp/local-dir1/filecache" and will localize files inside it until it becomes full. If a file is removed from a sub-directory that is marked full, then that sub-directory will be used back again to localize files.'
      td_notes '8192'
    end
    entry do
      td_command 'yarn.nodemanager.localizer.address'
      name 'Address where the localizer IPC is.'
      td_notes '${yarn.nodemanager.hostname}:8040'
    end
    entry do
      td_command 'yarn.nodemanager.localizer.cache.cleanup.interval-ms'
      name 'Interval in between cache cleanups.'
      td_notes '600000'
    end
    entry do
      td_command 'yarn.nodemanager.localizer.cache.target-size-mb'
      name 'Target size of localizer cache in MB, per nodemanager. It is a target retention size that only includes resources with PUBLIC and PRIVATE visibility and excludes resources with APPLICATION visibility'
      td_notes '10240'
    end
    entry do
      td_command 'yarn.nodemanager.localizer.client.thread-count'
      name 'Number of threads to handle localization requests.'
      td_notes '5'
    end
    entry do
      td_command 'yarn.nodemanager.localizer.fetch.thread-count'
      name 'Number of threads to use for localization fetching.'
      td_notes '4'
    end
    entry do
      td_command 'yarn.nodemanager.log-dirs'
      name 'Where to store container logs. An application\'s localized log directory will be found in ${yarn.nodemanager.log-dirs}/application_${appid}. Individual containers\' log directories will be below this, in directories named container_{$contid}. Each container directory will contain the files stderr, stdin, and syslog generated by that container.'
      td_notes '${yarn.log.dir}/userlogs'
    end
    entry do
      td_command 'yarn.log-aggregation-enable'
      name 'Whether to enable log aggregation. Log aggregation collects each container\'s logs and moves these logs onto a file-system, for e.g. HDFS, after the application completes. Users can configure the "yarn.nodemanager.remote-app-log-dir" and "yarn.nodemanager.remote-app-log-dir-suffix" properties to determine where these logs are moved to. Users can access the logs via the Application Timeline Server.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.log-aggregation.retain-seconds'
      name 'How long to keep aggregation logs before deleting them. -1 disables. Be careful set this too small and you will spam the name node.'
      td_notes '-1'
    end
    entry do
      td_command 'yarn.log-aggregation.retain-check-interval-seconds'
      name 'How long to wait between aggregated log retention checks. If set to 0 or a negative value then the value is computed as one-tenth of the aggregated log retention time. Be careful set this too small and you will spam the name node.'
      td_notes '-1'
    end
    entry do
      td_command 'yarn.nodemanager.log.retain-seconds'
      name 'Time in seconds to retain user logs. Only applicable if log aggregation is disabled'
      td_notes '10800'
    end
    entry do
      td_command 'yarn.nodemanager.remote-app-log-dir'
      name 'Where to aggregate logs to.'
      td_notes '/tmp/logs'
    end
    entry do
      td_command 'yarn.nodemanager.remote-app-log-dir-suffix'
      name 'The remote log dir will be created at {yarn.nodemanager.remote-app-log-dir}/${user}/{thisParam}'
      td_notes 'logs'
    end
    entry do
      td_command 'yarn.nodemanager.resource.memory-mb'
      name 'Amount of physical memory, in MB, that can be allocated for containers.'
      td_notes '8192'
    end
    entry do
      td_command 'yarn.nodemanager.pmem-check-enabled'
      name 'Whether physical memory limits will be enforced for containers.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'yarn.nodemanager.vmem-check-enabled'
      name 'Whether virtual memory limits will be enforced for containers.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'yarn.nodemanager.vmem-pmem-ratio'
      name 'Ratio between virtual memory to physical memory when setting memory limits for containers. Container allocations are expressed in terms of physical memory, and virtual memory usage is allowed to exceed this allocation by this ratio.'
      td_notes '2.1'
    end
    entry do
      td_command 'yarn.nodemanager.resource.cpu-vcores'
      name 'Number of vcores that can be allocated for containers. This is used by the RM scheduler when allocating resources for containers. This is not used to limit the number of physical cores used by YARN containers.'
      td_notes '8'
    end
    entry do
      td_command 'yarn.nodemanager.resource.percentage-physical-cpu-limit'
      name 'Percentage of CPU that can be allocated for containers. This setting allows users to limit the amount of CPU that YARN containers use. Currently functional only on Linux using cgroups. The default is to use 100% of CPU.'
      td_notes '100'
    end
    entry do
      td_command 'yarn.nodemanager.webapp.address'
      name 'NM Webapp address.'
      td_notes '${yarn.nodemanager.hostname}:8042'
    end
    entry do
      td_command 'yarn.nodemanager.container-monitor.interval-ms'
      name 'How often to monitor containers.'
      td_notes '3000'
    end
    entry do
      td_command 'yarn.nodemanager.container-monitor.resource-calculator.class'
      name 'Class that calculates containers current resource utilization.'
      td_notes ''
    end
    entry do
      td_command 'yarn.nodemanager.health-checker.interval-ms'
      name 'Frequency of running node health script.'
      td_notes '600000'
    end
    entry do
      td_command 'yarn.nodemanager.health-checker.script.timeout-ms'
      name 'Script time out period.'
      td_notes '1200000'
    end
    entry do
      td_command 'yarn.nodemanager.health-checker.script.path'
      name 'The health check script to run.'
      td_notes ''
    end
    entry do
      td_command 'yarn.nodemanager.health-checker.script.opts'
      name 'The arguments to pass to the health check script.'
      td_notes ''
    end
    entry do
      td_command 'yarn.nodemanager.disk-health-checker.interval-ms'
      name 'Frequency of running disk health checker code.'
      td_notes '120000'
    end
    entry do
      td_command 'yarn.nodemanager.disk-health-checker.min-healthy-disks'
      name 'The minimum fraction of number of disks to be healthy for the nodemanager to launch new containers. This correspond to both yarn.nodemanager.local-dirs and yarn.nodemanager.log-dirs. i.e. If there are less number of healthy local-dirs (or log-dirs) available, then new containers will not be launched on this node.'
      td_notes '0.25'
    end
    entry do
      td_command 'yarn.nodemanager.disk-health-checker.max-disk-utilization-per-disk-percentage'
      name 'The maximum percentage of disk space utilization allowed after which a disk is marked as bad. Values can range from 0.0 to 100.0. If the value is greater than or equal to 100, the nodemanager will check for full disk. This applies to yarn.nodemanager.local-dirs and yarn.nodemanager.log-dirs.'
      td_notes '90.0'
    end
    entry do
      td_command 'yarn.nodemanager.disk-health-checker.min-free-space-per-disk-mb'
      name 'The minimum space that must be available on a disk for it to be used. This applies to yarn.nodemanager.local-dirs and yarn.nodemanager.log-dirs.'
      td_notes '0'
    end
    entry do
      td_command 'yarn.nodemanager.linux-container-executor.path'
      name 'The path to the Linux container executor.'
      td_notes ''
    end
    entry do
      td_command 'yarn.nodemanager.linux-container-executor.resources-handler.class'
      name 'The class which should help the LCE handle resources.'
      td_notes 'org.apache.hadoop.yarn.server.nodemanager.util.DefaultLCEResourcesHandler'
    end
    entry do
      td_command 'yarn.nodemanager.linux-container-executor.cgroups.hierarchy'
      name 'The cgroups hierarchy under which to place YARN proccesses (cannot contain commas). If yarn.nodemanager.linux-container-executor.cgroups.mount is false (that is, if cgroups have been pre-configured), then this cgroups hierarchy must already exist and be writable by the NodeManager user, otherwise the NodeManager may fail. Only used when the LCE resources handler is set to the CgroupsLCEResourcesHandler.'
      td_notes '/hadoop-yarn'
    end
    entry do
      td_command 'yarn.nodemanager.linux-container-executor.cgroups.mount'
      name 'Whether the LCE should attempt to mount cgroups if not found. Only used when the LCE resources handler is set to the CgroupsLCEResourcesHandler.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.nodemanager.linux-container-executor.cgroups.mount-path'
      name 'Where the LCE should attempt to mount cgroups if not found. Common locations include /sys/fs/cgroup and /cgroup; the default location can vary depending on the Linux distribution in use. This path must exist before the NodeManager is launched. Only used when the LCE resources handler is set to the CgroupsLCEResourcesHandler, and yarn.nodemanager.linux-container-executor.cgroups.mount is true.'
      td_notes ''
    end
    entry do
      td_command 'yarn.nodemanager.linux-container-executor.nonsecure-mode.limit-users'
      name 'This determines which of the two modes that LCE should use on a non-secure cluster. If this value is set to true, then all containers will be launched as the user specified in yarn.nodemanager.linux-container-executor.nonsecure-mode.local-user. If this value is set to false, then containers will run as the user who submitted the application.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'yarn.nodemanager.linux-container-executor.nonsecure-mode.local-user'
      name 'The UNIX user that containers will run as when Linux-container-executor is used in nonsecure mode (a use case for this is using cgroups) if the yarn.nodemanager.linux-container-executor.nonsecure-mode.limit-users is set to true.'
      td_notes 'nobody'
    end
    entry do
      td_command 'yarn.nodemanager.linux-container-executor.nonsecure-mode.user-pattern'
      name 'The allowed pattern for UNIX user names enforced by Linux-container-executor when used in nonsecure mode (use case for this is using cgroups). The default value is taken from /usr/sbin/adduser'
      td_notes '^[_.A-Za-z0-9][-@_.A-Za-z0-9]{0,255}?[$]?$'
    end
    entry do
      td_command 'yarn.nodemanager.linux-container-executor.cgroups.strict-resource-usage'
      name 'This flag determines whether apps should run with strict resource limits or be allowed to consume spare resources if they need them. For example, turning the flag on will restrict apps to use only their share of CPU, even if the node has spare CPU cycles. The default value is false i.e. use available resources. Please note that turning this flag on may reduce job throughput on the cluster.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.nodemanager.windows-container.memory-limit.enabled'
      name 'This flag determines whether memory limit will be set for the Windows Job Object of the containers launched by the default container executor.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.nodemanager.windows-container.cpu-limit.enabled'
      name 'This flag determines whether CPU limit will be set for the Windows Job Object of the containers launched by the default container executor.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.nodemanager.log-aggregation.compression-type'
      name 'T-file compression types used to compress aggregated logs.'
      td_notes 'none'
    end
    entry do
      td_command 'yarn.nodemanager.principal'
      name 'The kerberos principal for the node manager.'
      td_notes ''
    end
    entry do
      td_command 'yarn.nodemanager.aux-services'
      name 'A comma separated list of services where service name should only contain a-zA-Z0-9_ and can not start with numbers'
      td_notes ''
    end
    entry do
      td_command 'yarn.nodemanager.sleep-delay-before-sigkill.ms'
      name 'No. of ms to wait between sending a SIGTERM and SIGKILL to a container'
      td_notes '250'
    end
    entry do
      td_command 'yarn.nodemanager.process-kill-wait.ms'
      name 'Max time to wait for a process to come up when trying to cleanup a container'
      td_notes '2000'
    end
    entry do
      td_command 'yarn.nodemanager.resourcemanager.minimum.version'
      name 'The minimum allowed version of a resourcemanager that a nodemanager will connect to. The valid values are NONE (no version checking), EqualToNM (the resourcemanager\'s version is equal to or greater than the NM version), or a Version String.'
      td_notes 'NONE'
    end
    entry do
      td_command 'yarn.client.nodemanager-client-async.thread-pool-max-size'
      name 'Max number of threads in NMClientAsync to process container management events'
      td_notes '500'
    end
    entry do
      td_command 'yarn.client.nodemanager-connect.max-wait-ms'
      name 'Max time to wait to establish a connection to NM'
      td_notes '180000'
    end
    entry do
      td_command 'yarn.client.nodemanager-connect.retry-interval-ms'
      name 'Time interval between each attempt to connect to NM'
      td_notes '10000'
    end
    entry do
      td_command 'yarn.client.max-cached-nodemanagers-proxies'
      name 'Maximum number of proxy connections to cache for node managers. If set to a value greater than zero then the cache is enabled and the NMClient and MRAppMaster will cache the specified number of node manager proxies. There will be at max one proxy per node manager. Ex. configuring it to a value of 5 will make sure that client will at max have 5 proxies cached with 5 different node managers. These connections for these proxies will be timed out if idle for more than the system wide idle timeout period. Note that this could cause issues on large clusters as many connections could linger simultaneously and lead to a large number of connection threads. The token used for authentication will be used only at connection creation time. If a new token is received then the earlier connection should be closed in order to use the new token. This and (yarn.client.nodemanager-client-async.thread-pool-max-size) are related and should be in sync (no need for them to be equal). If the value of this property is zero then the connection cache is disabled and connections will use a zero idle timeout to prevent too many connection threads on large clusters.'
      td_notes '0'
    end
    entry do
      td_command 'yarn.nodemanager.recovery.enabled'
      name 'Enable the node manager to recover after starting'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.nodemanager.recovery.dir'
      name 'The local filesystem directory in which the node manager will store state when recovery is enabled.'
      td_notes '${hadoop.tmp.dir}/yarn-nm-recovery'
    end
    entry do
      td_command 'yarn.nodemanager.recovery.compaction-interval-secs'
      name 'The time in seconds between full compactions of the NM state database. Setting the interval to zero disables the full compaction cycles.'
      td_notes '3600'
    end
    entry do
      td_command 'yarn.nodemanager.container-metrics.unregister-delay-ms'
      name 'The delay time ms to unregister container metrics after completion.'
      td_notes '10000'
    end
    entry do
      td_command 'yarn.nodemanager.docker-container-executor.exec-name'
      name 'Name or path to the Docker client.'
      td_notes '/usr/bin/docker'
    end
    entry do
      td_command 'yarn.nodemanager.aux-services.mapreduce_shuffle.class'
      name ''
      td_notes 'org.apache.hadoop.mapred.ShuffleHandler'
    end
    entry do
      td_command 'mapreduce.job.jar'
      name ''
      td_notes ''
    end
    entry do
      td_command 'mapreduce.job.hdfs-servers'
      name ''
      td_notes '${fs.defaultFS}'
    end
    entry do
      td_command 'yarn.web-proxy.principal'
      name 'The kerberos principal for the proxy, if the proxy is not running as part of the RM.'
      td_notes ''
    end
    entry do
      td_command 'yarn.web-proxy.keytab'
      name 'Keytab for WebAppProxy, if the proxy is not running as part of the RM.'
      td_notes ''
    end
    entry do
      td_command 'yarn.web-proxy.address'
      name 'The address for the web proxy as HOST:PORT, if this is not given then the proxy will run as part of the RM'
      td_notes ''
    end
    entry do
      td_command 'yarn.application.classpath'
      name 'CLASSPATH for YARN applications. A comma-separated list of CLASSPATH entries. When this value is empty, the following default CLASSPATH for YARN applications would be used. For Linux: $HADOOP_CONF_DIR, $HADOOP_COMMON_HOME/share/hadoop/common/*, $HADOOP_COMMON_HOME/share/hadoop/common/lib/*, $HADOOP_HDFS_HOME/share/hadoop/hdfs/*, $HADOOP_HDFS_HOME/share/hadoop/hdfs/lib/*, $HADOOP_YARN_HOME/share/hadoop/yarn/*, $HADOOP_YARN_HOME/share/hadoop/yarn/lib/* For Windows: %HADOOP_CONF_DIR%, %HADOOP_COMMON_HOME%/share/hadoop/common/*, %HADOOP_COMMON_HOME%/share/hadoop/common/lib/*, %HADOOP_HDFS_HOME%/share/hadoop/hdfs/*, %HADOOP_HDFS_HOME%/share/hadoop/hdfs/lib/*, %HADOOP_YARN_HOME%/share/hadoop/yarn/*, %HADOOP_YARN_HOME%/share/hadoop/yarn/lib/*'
      td_notes ''
    end
    entry do
      td_command 'yarn.timeline-service.enabled'
      name 'In the server side it indicates whether timeline service is enabled or not. And in the client side, users can enable it to indicate whether client wants to use timeline service. If it\'s enabled in the client side along with security, then yarn client tries to fetch the delegation tokens for the timeline server.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.timeline-service.hostname'
      name 'The hostname of the timeline service web application.'
      td_notes '0.0.0.0'
    end
    entry do
      td_command 'yarn.timeline-service.address'
      name 'This is default address for the timeline server to start the RPC server.'
      td_notes '${yarn.timeline-service.hostname}:10200'
    end
    entry do
      td_command 'yarn.timeline-service.webapp.address'
      name 'The http address of the timeline service web application.'
      td_notes '${yarn.timeline-service.hostname}:8188'
    end
    entry do
      td_command 'yarn.timeline-service.webapp.https.address'
      name 'The https address of the timeline service web application.'
      td_notes '${yarn.timeline-service.hostname}:8190'
    end
    entry do
      td_command 'yarn.timeline-service.bind-host'
      name 'The actual address the server will bind to. If this optional address is set, the RPC and webapp servers will bind to this address and the port specified in yarn.timeline-service.address and yarn.timeline-service.webapp.address, respectively. This is most useful for making the service listen to all interfaces by setting to 0.0.0.0.'
      td_notes ''
    end
    entry do
      td_command 'yarn.timeline-service.generic-application-history.max-applications'
      name 'Defines the max number of applications could be fetched using REST API or application history protocol and shown in timeline server web ui.'
      td_notes '10000'
    end
    entry do
      td_command 'yarn.timeline-service.store-class'
      name 'Store class name for timeline store.'
      td_notes 'org.apache.hadoop.yarn.server.timeline.LeveldbTimelineStore'
    end
    entry do
      td_command 'yarn.timeline-service.ttl-enable'
      name 'Enable age off of timeline store data.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'yarn.timeline-service.ttl-ms'
      name 'Time to live for timeline store data in milliseconds.'
      td_notes '604800000'
    end
    entry do
      td_command 'yarn.timeline-service.leveldb-timeline-store.path'
      name 'Store file name for leveldb timeline store.'
      td_notes '${hadoop.tmp.dir}/yarn/timeline'
    end
    entry do
      td_command 'yarn.timeline-service.leveldb-timeline-store.ttl-interval-ms'
      name 'Length of time to wait between deletion cycles of leveldb timeline store in milliseconds.'
      td_notes '300000'
    end
    entry do
      td_command 'yarn.timeline-service.leveldb-timeline-store.read-cache-size'
      name 'Size of read cache for uncompressed blocks for leveldb timeline store in bytes.'
      td_notes '104857600'
    end
    entry do
      td_command 'yarn.timeline-service.leveldb-timeline-store.start-time-read-cache-size'
      name 'Size of cache for recently read entity start times for leveldb timeline store in number of entities.'
      td_notes '10000'
    end
    entry do
      td_command 'yarn.timeline-service.leveldb-timeline-store.start-time-write-cache-size'
      name 'Size of cache for recently written entity start times for leveldb timeline store in number of entities.'
      td_notes '10000'
    end
    entry do
      td_command 'yarn.timeline-service.handler-thread-count'
      name 'Handler thread count to serve the client RPC requests.'
      td_notes '10'
    end
    entry do
      td_command 'yarn.timeline-service.http-authentication.type'
      name 'Defines authentication used for the timeline server HTTP endpoint. Supported values are: simple | kerberos |'
      td_notes 'AUTHENTICATION_HANDLER_CLASSNAME                                                                    #  # simple'
    end
    entry do
      td_command 'yarn.timeline-service.http-authentication.simple.anonymous.allowed'
      name 'Indicates if anonymous requests are allowed by the timeline server when using \'simple\' authentication.'
      td_notes 'TRUE'
    end
    entry do
      td_command 'yarn.timeline-service.principal'
      name 'The Kerberos principal for the timeline server.'
      td_notes ''
    end
    entry do
      td_command 'yarn.timeline-service.keytab'
      name 'The Kerberos keytab for the timeline server.'
      td_notes '/etc/krb5.keytab'
    end
    entry do
      td_command 'yarn.timeline-service.ui-names'
      name 'Comma separated list of UIs that will be hosted'
      td_notes ''
    end
    entry do
      td_command 'yarn.timeline-service.client.max-retries'
      name 'Default maximum number of retires for timeline servive client and value -1 means no limit.'
      td_notes '30'
    end
    entry do
      td_command 'yarn.timeline-service.client.best-effort'
      name 'Client policy for whether timeline operations are non-fatal. Should the failure to obtain a delegation token be considered an application failure (option = false), or should the client attempt to continue to publish information without it (option=true)'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.timeline-service.client.retry-interval-ms'
      name 'Default retry time interval for timeline servive client.'
      td_notes '1000'
    end
    entry do
      td_command 'yarn.timeline-service.recovery.enabled'
      name 'Enable timeline server to recover state after starting. If true, then yarn.timeline-service.state-store-class must be specified.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.timeline-service.state-store-class'
      name 'Store class name for timeline state store.'
      td_notes 'org.apache.hadoop.yarn.server.timeline.recovery.LeveldbTimelineStateStore'
    end
    entry do
      td_command 'yarn.timeline-service.leveldb-state-store.path'
      name 'Store file name for leveldb state store.'
      td_notes '${hadoop.tmp.dir}/yarn/timeline'
    end
    entry do
      td_command 'yarn.sharedcache.enabled'
      name 'Whether the shared cache is enabled'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.sharedcache.root-dir'
      name 'The root directory for the shared cache'
      td_notes '/sharedcache'
    end
    entry do
      td_command 'yarn.sharedcache.nested-level'
      name 'The level of nested directories before getting to the checksum directories. It must be non-negative.'
      td_notes '3'
    end
    entry do
      td_command 'yarn.sharedcache.store.class'
      name 'The implementation to be used for the SCM store'
      td_notes 'org.apache.hadoop.yarn.server.sharedcachemanager.store.InMemorySCMStore'
    end
    entry do
      td_command 'yarn.sharedcache.app-checker.class'
      name 'The implementation to be used for the SCM app-checker'
      td_notes 'org.apache.hadoop.yarn.server.sharedcachemanager.RemoteAppChecker'
    end
    entry do
      td_command 'yarn.sharedcache.store.in-memory.staleness-period-mins'
      name 'A resource in the in-memory store is considered stale if the time since the last reference exceeds the staleness period. This value is specified in minutes.'
      td_notes '10080'
    end
    entry do
      td_command 'yarn.sharedcache.store.in-memory.initial-delay-mins'
      name 'Initial delay before the in-memory store runs its first check to remove dead initial applications. Specified in minutes.'
      td_notes '10'
    end
    entry do
      td_command 'yarn.sharedcache.store.in-memory.check-period-mins'
      name 'The frequency at which the in-memory store checks to remove dead initial applications. Specified in minutes.'
      td_notes '720'
    end
    entry do
      td_command 'yarn.sharedcache.admin.address'
      name 'The address of the admin interface ikjvi{n the SCM (shared cache manager)'
      td_notes '0.0.0.0:8047'
    end
    entry do
      td_command 'yarn.sharedcache.admin.thread-count'
      name 'The number of threads used to handle SCM admin interface (1 by default)'
      td_notes '1'
    end
    entry do
      td_command 'yarn.sharedcache.webapp.address'
      name 'The address of the web application in the SCM (shared cache manager)'
      td_notes '0.0.0.0:8788'
    end
    entry do
      td_command 'yarn.sharedcache.cleaner.period-mins'
      name 'The frequency at which a cleaner task runs. Specified in minutes.'
      td_notes '1440'
    end
    entry do
      td_command 'yarn.sharedcache.cleaner.initial-delay-mins'
      name 'Initial delay before the first cleaner task is scheduled. Specified in minutes.'
      td_notes '10'
    end
    entry do
      td_command 'yarn.sharedcache.cleaner.resource-sleep-ms'
      name 'The time to sleep between processing each shared cache resource. Specified in milliseconds.'
      td_notes '0'
    end
    entry do
      td_command 'yarn.sharedcache.uploader.server.address'
      name 'The address of the node manager interface in the SCM (shared cache manager)'
      td_notes '0.0.0.0:8046'
    end
    entry do
      td_command 'yarn.sharedcache.uploader.server.thread-count'
      name 'The number of threads used to handle shared cache manager requests from the node manager (50 by default)'
      td_notes '50'
    end
    entry do
      td_command 'yarn.sharedcache.client-server.address'
      name 'The address of the client interface in the SCM (shared cache manager)'
      td_notes '0.0.0.0:8045'
    end
    entry do
      td_command 'yarn.sharedcache.client-server.thread-count'
      name 'The number of threads used to handle shared cache manager requests from clients (50 by default)'
      td_notes '50'
    end
    entry do
      td_command 'yarn.sharedcache.checksum.algo.impl'
      name 'The algorithm used to compute checksums of files (SHA-256 by default)'
      td_notes 'org.apache.hadoop.yarn.sharedcache.ChecksumSHA256Impl'
    end
    entry do
      td_command 'yarn.sharedcache.nm.uploader.replication.factor'
      name 'The replication factor for the node manager uploader for the shared cache (10 by default)'
      td_notes '10'
    end
    entry do
      td_command 'yarn.sharedcache.nm.uploader.thread-count'
      name 'The number of threads used to upload files from a node manager instance (20 by default)'
      td_notes '20'
    end
    entry do
      td_command 'yarn.client.application-client-protocol.poll-interval-ms'
      name 'The interval that the yarn client library uses to poll the completion status of the asynchronous API of application client protocol.'
      td_notes '200'
    end
    entry do
      td_command 'yarn.nodemanager.container-monitor.procfs-tree.smaps-based-rss.enabled'
      name 'RSS usage of a process computed via /proc/pid/stat is not very accurate as it includes shared pages of a process. /proc/pid/smaps provides useful information like Private_Dirty, Private_Clean, Shared_Dirty, Shared_Clean which can be used for computing more accurate RSS. When this flag is enabled, RSS is computed as Min(Shared_Dirty, Pss) + Private_Clean + Private_Dirty. It excludes read-only shared mappings in RSS computation.'
      td_notes 'FALSE'
    end
    entry do
      td_command 'yarn.nodemanager.log-aggregation.roll-monitoring-interval-seconds'
      name 'Defines how often NMs wake up to upload log files. The default value is -1. By default, the logs will be uploaded when the application is finished. By setting this configure, logs can be uploaded periodically when the application is running. The minimum rolling-interval-seconds can be set is 3600.'
      td_notes '-1'
    end
    entry do
      td_command 'yarn.nodemanager.webapp.cross-origin.enabled'
      name 'Flag to enable cross-origin (CORS) support in the NM. This flag requires the CORS filter initializer to be added to the filter initializers list in core-site.xml.'
      td_notes 'FALSE'
    end
  end
end
