FROM centos:8

ARG postgresql_url="https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm"

RUN yum -y update
RUN echo "#################### Installing base packages and PostgreSQL 13 ####################" && \
    yum -y install epel-release && \
    yum -y install ${postgresql_url} && \
    yum -qy module disable postgresql && \
    yum -y install curl \
                   diffutils \
                   file \
                   gcc \
                   gcc-c++ \
                   geos \
                   geos-devel \
                   json-c \
                   libtiff \
                   libxml2-devel \
                   libpng \
                   libpq-devel \
                   lsof \
                   make \
                   nodejs \
                   npm \
                   p7zip \
                   perl \
                   postgresql13-server \
                   postgresql13-devel \
                   rsync \
                   sqlite-devel \
                   telnet \
                   tree \
                   wget \
                   which \
                   unzip \
                   zip

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
