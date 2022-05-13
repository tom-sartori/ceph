# Ceph


(DEPLOYING A NEW CEPH CLUSTER)[https://docs.ceph.com/en/latest/cephadm/install/#single-host] 


```sh
git clone git@github.com:tom-sartori/ceph.git
cd ceph
docker-compose up --build --force-recreate -d
docker exec -it ceph sh 
```

```sh
ifconfig  # -> get eth0. 
cephadm bootstrap --mon-ip $eth0
```

Result : Hangs indefinitely at this :
```sh
Waiting for mon to start...
Waiting for mon...
```
