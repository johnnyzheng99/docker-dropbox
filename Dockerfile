FROM ubuntu:trusty
MAINTAINER johnnyzheng@itfolks.com.au
#ADD https://www.dropbox.com/download?plat=lnx.x86_64 /dropbox.tgz
ADD dropbox.tgz /dropbox.tgz
VOLUME /.dropbox
VOLUME /Dropbox
ENTRYPOINT /dropbox.tgz/.dropbox-dist/dropboxd
