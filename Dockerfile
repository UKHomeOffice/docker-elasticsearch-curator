FROM quay.io/ukhomeofficedigital/centos-base:v0.2.0

RUN yum install -q -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm && yum upgrade -y -q; yum clean all
RUN yum install -q -y python-pip; yum clean all
RUN adduser -d /data -m curator

RUN pip install elasticsearch-curator

VOLUME /data
WORKDIR /data

USER curator

# COPY run.sh /run.sh
# CMD /run.sh
