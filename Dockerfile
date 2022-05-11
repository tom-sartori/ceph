FROM quay.io/ceph/ceph:v17.2


RUN dnf config-manager --set-enabled powertools	
RUN dnf -y update	
RUN dnf module list | grep container-tools


RUN yum update
RUN rpm -aq | grep selinux
RUN yum install -y policycoreutils policycoreutils-python-utils setools setools-console setroubleshoot


COPY ./config /etc/selinux/config


RUN yum makecache --refresh
RUN yum -y install container-selinux


RUN dnf install -y @container-tools

CMD [ "/sbin/init" ]