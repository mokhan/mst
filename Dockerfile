FROM fedora:latest
RUN yum update -y
RUN yum install -y git wget tree man which ruby-devel rpm-build libffi-devel
RUN yum group install -y "Development Tools"
RUN yum group install -y "X Software Development"
RUN gem install --no-document fpm
RUN git clone https://git.suckless.org/st /root/st
WORKDIR /root/st
COPY patch.sh patch.sh
COPY config.h config.h
RUN sh patch.sh
RUN make clean install
WORKDIR /root/
RUN fpm -s dir -t rpm -n mokha-st -v '0.8.2' /usr/local/bin/st /usr/local/share/man/man1/st.1 /usr/share/applications/st.desktop
