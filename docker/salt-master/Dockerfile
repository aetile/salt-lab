FROM aetile/ubuntu-with-sudo:try
#FROM ubuntu:20.04
USER root
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
RUN apt-get install -y gnupg wget
RUN wget -O - https://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
RUN echo 'deb http://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest focal main' | tee -a /etc/apt/sources.list.d/saltstack.list
RUN apt-get update
RUN apt-get install -y salt-master salt-api
ADD salt.sh /usr/local/bin/salt.sh
RUN chmod +x /usr/local/bin/salt.sh
CMD ["/usr/local/bin/salt.sh"]
