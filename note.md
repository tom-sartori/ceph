
https://docs.ceph.com/en/latest/cephadm/install/

`curl --silent --remote-name --location https://github.com/ceph/ceph/raw/quincy/src/cephadm/cephadm`
chmod +x cephadm
chmod u+x cephadm 
sudo ./cephadm add-repo --release quincy
sudo ./cephadm install

not working 



https://docs.ceph.com/en/latest/dev/macos/

brew install llvm
brew install snappy ccache cmake pkg-config
pip install cython






docker run -it ceph

yum install net-tools


sudo yum install -y yum-utils
sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
yum -y install chrony






docker run --privileged -it c92c93952052 


docker run --privileged -it -p 9000:9000 c92c93952052


# Need ifconfig
yum install net-tools

ifconfig 
# -> 172.17.0.4


cephadm bootstrap --mon-ip 172.17.0.4


# ERROR: No container engine binary found (podman or docker). Try run `apt/dnf/yum/zypper install <container engine>`
yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
 sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin





sh-4.4# cephadm bootstrap --mon-ip 127.17.0.3
Verifying podman|docker is present...
Verifying lvm2 is present...
Verifying time synchronization is in place...
No time sync service is running; checked for ['chrony.service', 'chronyd.service', 'systemd-timesyncd.service', 'ntpd.service', 'ntp.service', 'ntpsec.service', 'openntpd.service']
Installing packages ['chrony']...
Enabling unit chronyd.service
Non-zero exit code 1 from systemctl enable --now chronyd.service
systemctl: stderr System has not been booted with systemd as init system (PID 1). Can't operate.
systemctl: stderr Failed to connect to bus: Host is down
Traceback (most recent call last):
  File "/usr/sbin/cephadm", line 8634, in <module>
    main()
  File "/usr/sbin/cephadm", line 8622, in main
    r = ctx.func(ctx)
  File "/usr/sbin/cephadm", line 1938, in _default_image
    return func(ctx)
  File "/usr/sbin/cephadm", line 4976, in command_bootstrap
    command_prepare_host(ctx)
  File "/usr/sbin/cephadm", line 6628, in command_prepare_host
    check_time_sync(ctx, enabler=pkg)
  File "/usr/sbin/cephadm", line 6561, in check_time_sync
    if not check_units(ctx, units, enabler):
  File "/usr/sbin/cephadm", line 2237, in check_units
    enabler.enable_service(u)
  File "/usr/sbin/cephadm", line 6756, in enable_service
    call_throws(self.ctx, ['systemctl', 'enable', '--now', service])
  File "/usr/sbin/cephadm", line 1615, in call_throws
    raise RuntimeError(f'Failed command: {" ".join(command)}: {s}')
RuntimeError: Failed command: systemctl enable --now chronyd.service: System has not been booted with systemd as init system (PID 1). Can't operate.
Failed to connect to bus: Host is down




systemd: Linux is required for this software.
libcap: Linux is required for this software.
Error: systemd: Unsatisfied requirements failed this build.






docker run -it --privileged --name registry -p 5000:5000 -v /var/lib/registry:/var/lib/registry --restart=always c92c93952052

# Need ifconfig
yum install net-tools

ifconfig 
# -> 172.17.0.3


cephadm --image localhost:5000/ceph/ceph bootstrap --mon-ip 172.17.0.3

# ERROR: No container engine binary found (podman or docker). Try run `apt/dnf/yum/zypper install <container engine>`
yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin


yum install docker

wget https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl.py -O /usr/local/bin/systemctl
chmod u+x /usr/local/bin/systemctl
/usr/local/bin/systemctl start chronyd





cephadm --docker --image ceph/ceph:v16.2.5 bootstrap --mon-ip 172.21.0.2:6000
cephadm --docker --image "ceph/ceph:v16.2.5" bootstrap --mon-ip 172.17.0.2

cephadm --docker bootstrap --mon-ip 172.21.0.2:6000





TODO 

docker-compose up --build --force-recreate -d

docker exec -it ceph sh
/usr/local/bin/systemctl start chronyd
ifconfig -> 172.21.0.2

cephadm --docker bootstrap --mon-ip 172.21.0.2:6000




sh-4.4# docker
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: missing command 'podman COMMAND'
Try 'podman --help' for more information.


    
    
podman run --privileged -d --name registry -p 6000:6000 -v /var/lib/registry:/var/lib/registry --restart=always registry:2
podman run --privileged -d -it --name registry -p 6000:6000 --storage-opt mount_program=/usr/bin/fuse-overlayfs -v /var/lib/registry:/var/lib/registry --restart=always registry:2

    
cephadm --image 10.88.0.1/ceph/ceph:v16.2.5 bootstrap --mon-ip 172.21.0.2:6000
cephadm --docker --no-container-init --image 10.88.0.1/ceph/ceph:v16.2.5 bootstrap --mon-ip 172.21.0.2
cephadm --image docker.io/ceph/ceph:v16.2.5 bootstrap --mon-ip 172.21.0.2


yum -y install dbus-devel



docker run -d -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN -p 3000:3000 -v /Users/tom/Desktop/ceph2/webpages/:/var/www/html --name ceph3 quay.io/ceph/ceph:v17 /sbin/init

cephadm --image localhost:6000/ceph/ceph bootstrap --mon-ip localhost



docker run --privileged -it\
  --name ceph\
  -p 4000:4000\
  --restart=always\
  c92c93952052
  
docker run --privileged -it\
  -p 9000:9000\
  fb6e586427f0

docker run -d -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN -p 8000:8000 -v /Users/tom/Desktop/ceph2/webpages/:/var/www/html --name ceph8 quay.io/ceph/ceph:v17 /sbin/init





yum install fuse-overlayfs
podman --storage-opt mount_program=/usr/bin/fuse-overlayfs pull docker.io/ceph/ceph:v16.2.5







# Error: Failed to download metadata for repo 'appstream': Cannot prepare internal mirrorlist: No URLs in mirrorlist
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*






Avec volume 
    
Pulling container image docker.io/ceph/ceph:v16...
Non-zero exit code 125 from /usr/bin/podman pull docker.io/ceph/ceph:v16
/usr/bin/podman: stderr time="2022-05-05T17:59:38Z" level=error msg="Failed to built-in GetDriver graph btrfs /var/lib/containers/storage"
/usr/bin/podman: stderr Error: open /etc/containers/policy.json: no such file or directory
Traceback (most recent call last):
  File "/usr/sbin/cephadm", line 8230, in <module>
    main()
  File "/usr/sbin/cephadm", line 8218, in main
    r = ctx.func(ctx)
  File "/usr/sbin/cephadm", line 1759, in _default_image
    return func(ctx)
  File "/usr/sbin/cephadm", line 4028, in command_bootstrap
    _pull_image(ctx, ctx.image)
  File "/usr/sbin/cephadm", line 3311, in _pull_image
    raise RuntimeError('Failed command: %s' % cmd_str)
RuntimeError: Failed command: /usr/bin/podman pull docker.io/ceph/ceph:v16


    
Sans volume 

Pulling container image docker.io/ceph/ceph:v16...
Non-zero exit code 125 from /usr/bin/docker pull docker.io/ceph/ceph:v16
/usr/bin/docker: stderr Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
/usr/bin/docker: stderr Error: 'overlay' is not supported over overlayfs, a mount_program is required: backing file system is unsupported for this graph driver
Traceback (most recent call last):
  File "/usr/sbin/cephadm", line 8230, in <module>
    main()
  File "/usr/sbin/cephadm", line 8218, in main
    r = ctx.func(ctx)
  File "/usr/sbin/cephadm", line 1759, in _default_image
    return func(ctx)
  File "/usr/sbin/cephadm", line 4028, in command_bootstrap
    _pull_image(ctx, ctx.image)
  File "/usr/sbin/cephadm", line 3311, in _pull_image
    raise RuntimeError('Failed command: %s' % cmd_str)
RuntimeError: Failed command: /usr/bin/docker pull docker.io/ceph/ceph:v16
    
    
    
    
sh-4.4# docker --storage-opt mount_program=/usr/bin/fuse-overlayfs pull docker.io/ceph/ceph:v16.2.5
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Trying to pull docker.io/ceph/ceph:v16.2.5...
Getting image source signatures
Copying blob 77890c5669f6 done  
Copying blob 7a0437f04f83 done  
Error: writing blob: adding layer with blob "sha256:7a0437f04f83f084b7ed68ad9c4a4947e12fc4e1b006b38129bac89114ec3621": Error processing tar file(exit status 1): Error setting up pivot dir: mkdir /var/lib/containers/storage/overlay/2653d992f4ef2bfd27f94db643815aa567240c37732cae1405ad1c1309ee9859/diff/.pivot_root293699698: operation not permitted

