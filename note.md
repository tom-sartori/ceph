
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














# Error: Failed to download metadata for repo 'appstream': Cannot prepare internal mirrorlist: No URLs in mirrorlist
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
















/usr/local/bin/systemctl start chronyd




