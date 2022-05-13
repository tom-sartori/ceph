
# System update. 
dnf config-manager --set-enabled powertools	
dnf -y update	
dnf module list | grep container-tools


# Selinux setup. 
yum update
rpm -aq | grep selinux
yum install -y policycoreutils policycoreutils-python-utils setools setools-console setroubleshoot

# Nano. 
yum install -y nano
nano /etc/selinux/config


# Container selinux installation. 
yum makecache --refresh
yum -y install container-selinux


# Podman installation. 
dnf install -y @container-tools


# fuse-overlayfs installation. 
dnf makecache --refresh
dnf -y install fuse-overlayfs
nano /etc/containers/storage.conf


# Installation ip and ifconfig. 
yum install -y iproute			
yum install -y net-tools


# Chrony installation. 
dnf makecache --refresh
dnf -y install chrony



