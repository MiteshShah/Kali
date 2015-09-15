FROM miteshshah/kalilinux
MAINTAINER Mr.Miteshah@gmail.com

# Install Required Packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install whois dnsmap dnsenum thc-ipv6 goofile theharvester lftp telnet && apt-get clean

CMD ["/bin/bash"]
