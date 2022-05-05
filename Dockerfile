FROM ceph/ceph:v16.2.5


# Error: Failed to download metadata for repo 'appstream': Cannot prepare internal mirrorlist: No URLs in mirrorlist
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*


# ERROR: No container engine binary found (podman or docker). Try run `apt/dnf/yum/zypper install <container engine>`
RUN yum install -y docker


RUN yum install -y net-tools


# Systemd
RUN yum install -y wget
RUN yum install -y python2
RUN yum -y install dbus-devel
RUN wget https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl.py -O /usr/local/bin/systemctl
RUN chmod u+x /usr/local/bin/systemctl

# Chrony
# No time sync service is running; checked for ['chrony.service', 'chronyd.service', 'systemd-timesyncd.service', 'ntpd.service', 'ntp.service', 'ntpsec.service']
RUN yum install -y chrony 


CMD /usr/sbin/init
