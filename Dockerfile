FROM ubuntu:18.04

RUN apt-get update && apt-get install -y keepalived python3-pip
RUN pip3 install --no-cache-dir ovh
ADD 0001-add-ovh-us.patch /tmp/
RUN cd /usr/local/lib/python3.6/dist-packages/ovh && patch -p1 < /tmp/0001-add-ovh-us.patch
