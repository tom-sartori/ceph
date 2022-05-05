# Ceph

```sh
git clone git@github.com:tom-sartori/ceph.git
cd ceph
docker-compose up --build -d
docker exec -it ceph sh 
```

```sh
/usr/local/bin/systemctl start chronyd
ifconfig  # -> get lo or eth0. 
cephadm --image ceph/ceph:v16.2.5 bootstrap --mon-ip $IFCONFIG:6000
```



## Errors :  

`cephadm --docker bootstrap --mon-ip 127.0.0.1:6000`
```
sh-4.4# cephadm --docker bootstrap --mon-ip 127.0.0.1:6000
Verifying podman|docker is present...
Verifying lvm2 is present...
Verifying time synchronization is in place...
Unit chronyd.service is enabled and running
Repeating the final host check...
podman|docker (/usr/bin/docker) is present
systemctl is present
lvcreate is present
Unit chronyd.service is enabled and running
Host looks OK
Cluster fsid: 8491726e-ccc1-11ec-a308-0242ac140002
Address: 127.0.0.1:6000 is not a valid IP address
Using msgr2 protocol for unrecognized port 6000
Verifying IP 127.0.0.1 port 6000 ...
ERROR: Cannot infer CIDR network for mon IP `127.0.0.1`: pass --skip-mon-network to configure it later
```

---  

```sh
sh-4.4# cephadm --image ceph/ceph:v16.2.5 bootstrap --mon-ip 172.21.0.2:6000
Verifying podman|docker is present...
Verifying lvm2 is present...
Verifying time synchronization is in place...
Unit chronyd.service is enabled and running
Repeating the final host check...
podman|docker (/usr/bin/podman) is present
systemctl is present
lvcreate is present
Unit chronyd.service is enabled and running
Host looks OK
Cluster fsid: 7ea78854-ccbf-11ec-b9c4-0242ac150002
Address: 172.21.0.2:6000 is not a valid IP address
Using msgr2 protocol for unrecognized port 6000
Verifying IP 172.21.0.2 port 6000 ...
Mon IP `172.21.0.2` is in CIDR network `172.21.0.0/16`
- internal network (--cluster-network) has not been provided, OSD replication will default to the public_network
Pulling container image ceph/ceph:v16.2.5...
```
Never stop loading. 
