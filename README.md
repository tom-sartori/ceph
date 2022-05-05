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

---  

[Doc : deployment-in-an-isolated-environment](https://docs.ceph.com/en/latest/cephadm/install/#deployment-in-an-isolated-environment)

```sh
sh-4.4# podman run --privileged -d -it --name registry -p 6000:6000 -v /var/lib/registry:/var/lib/registry --restart=always registry:2
Resolved "registry" as an alias (/etc/containers/registries.conf.d/000-shortnames.conf)
Trying to pull docker.io/library/registry:2...
Getting image source signatures
Copying blob 52dc419b0ee2 done  
Copying blob b6846b9db566 done  
Copying blob df9b9388f04a done  
Copying blob b0a23bbf973d done  
Copying blob c50f110701a7 done  
Error: writing blob: adding layer with blob "sha256:df9b9388f04ad6279a7410b85cedfdcb2208c0a003da7ab5613af71079148139": Error processing tar file(exit status 1): Error setting up pivot dir: mkdir /var/lib/containers/storage/overlay/4fc242d58285699eca05db3cc7c7122a2b8e014d9481f323bd9277baacfa0628/diff/.pivot_root359381896: operation not permitted
```


