FROM miteshshah/kali-linux-web
MAINTAINER Mr.Miteshah@gmail.com

# Install Required Packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install dnsmap goofile theharvester lftp telnet && apt-get clean

# Fix Metaspoit DB Issue
RUN msfdb init

# Fix Webspoit Module Issue
RUN apt-get -y install python-scapy

CMD ["/bin/bash"]
