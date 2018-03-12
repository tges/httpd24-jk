# dockerfile for mod_jk connector

FROM registry.access.redhat.com/rhscl/httpd-24-rhel7:latest

COPY mod_jk.so /opt/rh/httpd24/root/usr/lib64/httpd/modules/

COPY uriworkermap.properties /etc/httpd/conf.d/

COPY workers.properties /etc/httpd/conf.d/

COPY mod_jk.conf /etc/httpd/conf.d/
