# Configure HDFS on top of OpenZFS

## Set up individual nodes 
To configure HDFS on top of ZFS, first build OpenZFS from source in your node:
```
git clone https://github.com/zhynwng/zfs-MLEC.git
git checkout zfs-2.1-myraid
./zfs_full_install.sh
```
If you haven't built OpenZFS from source in your server before, check out [this README file](https://github.com/zhynwng/zfs-MLEC/blob/zfs-2.1-myraid/README.md) for the instructions on how to set up enviroment and build OpenZFS in a brand new server.

After building OpenZFS, you should set up a ZFS pool locally in your nodes. Later, we will connect these local pools via HDFS. Here are sample commands to set up an experimental ZFS pool with virtual disks. The pool is mounted to directory /test/, with 2+1 EC configuration.
```
sudo mkdir /scratch
for i in {1..3}; do sudo truncate -s 4G /scratch/$i.img; done
sudo zpool create test raidz /scratch/1.img /scratch/2.img /scratch/3.img 
zpool status
```

Then, build HDFS from source. The installation should takes roughly about half an hour. 
```
git clone https://github.com/zhynwng/hadoop-MLEC.git
cd hadoop-MLEC/
git checkout branch-3.3.5
./init.sh
sudo mvn package -Pdist -DskipTests -Dtar -Dmaven.javadoc.skip=true
./buildnode.sh
```

Repeat this procedure on any number of nodes you want to set up as a cluster.


## Set up clusters
Now, we finished the step for each individual nodes, we want to connect them into a cluster via HDFS. We will first choose one node to set up as a namenode (one per cluster), and then choose the rest to be datanodes. In terms of the EC policy for the cluster, this configuration sticks to the simplest policy of replication. 

### Set up Namenode

1.create the zfs dataset to hold the data and namenode
```
sudo zfs create test/datanode
sudo zfs create test/namenode
```

2. make the following changes in xml configuration file in HDFS:

in hadoop/conf/core-site.xml
```
<property>
        <name>fs.defaultFS</name>
        <value>hdfs://namenode-hostname:9000</value>
</property>
```
Here, "namenode-hostname" should be replaced with the fixed IP address for your name node.

in hadoop/conf/hdfs-site.xml 
```
<property>
        <name>dfs.replication</name>
        <value>3</value>
</property>
<property>
    <name>dfs.namenode.name.dir</name>
    <value>file:///test/namenode</value>
</property>
<property>
        <name>dfs.datanode.node.dir</name>
        <value>file:///test/datanode</value>
</property>
```

3. Start the namenode

```
cd ~/hadoop/
./bin/hdfs namenode -format
./sbin/start-dfs.sh
```

### Set up Datanode

1.create the zfs dataset to hold the data and namenode
```
sudo zfs create test/datanode
```

2. make the following changes in xml configuration file in HDFS:

in hadoop/conf/core-site.xml
```
<property>
        <name>fs.defaultFS</name>
        <value>hdfs://namenode-hostname:9000</value>
</property>
```
Here, "namenode-hostname" should be replaced with the fixed IP address for your name node. (not your datanode)

in hadoop/conf/hdfs-site.xml 
```
<property>
        <name>dfs.replication</name>
        <value>3</value>
</property>
<property>
        <name>dfs.datanode.node.dir</name>
        <value>file:///test/datanode</value>
</property>
```

3. Start the datanodes

```
cd ~/hadoop/
./sbin/start-dfs.sh
```

## Check your results

If configured properly, you can check your result in the following page in your datanode:
```
https://localhost:9870
```

## Dependencies
Ubuntu 20.04 or 22.04 (works on [Chameleon](https://www.chameleoncloud.org/about/chameleon/))