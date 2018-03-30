FROM ubuntu:16.04

LABEL maintainer="Mehmet Yatkı <mehmet@yatki.com>"

RUN apt-get update
RUN apt-get -y install sudo wget
RUN apt-get -y install checkinstall build-essential;

RUN mkdir -p /softether
WORKDIR /softether

COPY install-softether-vpn.sh /softether/install-softether-vpn.sh
RUN chmod +x /softether/*.sh

RUN /softether/install-softether-vpn.sh

ENTRYPOINT ["tail", "-f", "/dev/null"]