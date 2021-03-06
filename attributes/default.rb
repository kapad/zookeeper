default["zookeeper"]["cluster_name"] = "default"

# ZK defaults
default["zookeeper"]["tick_time"] = 2000
default["zookeeper"]["init_limit"] = 10
default["zookeeper"]["sync_limit"] = 5
default["zookeeper"]["client_port"] = 2181
default["zookeeper"]["peer_port"] = 2888
default["zookeeper"]["leader_port"] = 3888

default["zookeeper"]["log_dir"] = "/var/log/zookeeper"
default["zookeeper"]["var_dir"] = "/var/lib/zookeeper"
default["zookeeper"]["data_dir"] = ::File.join(zookeeper['var_dir'], "data")
default["zookeeper"]["conf_dir"] = "/etc/zookeeper"

default["zookeeper"]["ebs_vol_dev"] = "/dev/sdp"
default["zookeeper"]["ebs_vol_size"] = 10

# For chef solo, fill in the nessecary data for remote zookeeper nodes:
# default["zookeeper"]["nodes"] = [ {:ipaddress => "192.168.1.23", :zookeeper => {:peer_port => 2888, :leader_port => 3888}} ]
default["zookeeper"]["nodes"] = []
# For chef client, perform a search for nodes with this role and with same cluster_name
default["zookeeper"]["server_role"] = "zookeeper"

default["zookeeper"]["version"] = "3.4.5"
default["zookeeper"]["checksum"] = "e92b634e99db0414c6642f6014506cc22eefbea42cc912b57d7d0527fb7db132"
default["zookeeper"]["download_url"] = "http://www.carfab.com/apachesoftware/zookeeper/zookeeper-#{node[:zookeeper][:version]}/zookeeper-#{node[:zookeeper][:version]}.tar.gz"

default["zookeeper"]["quorum_size"] = 1
