FROM aetile/ubuntu-with-sudo:try
USER root
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
RUN apt-get install -y gnupg iputils-ping
RUN wget -O - https://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
RUN echo 'deb http://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest focal main' | tee -a /etc/apt/sources.list.d/saltstack.list
RUN apt-get update
RUN apt-get install -y salt-minion
RUN mkdir /var/run/salt
ADD minion.sh /usr/local/bin/minion.sh
RUN chmod +x /usr/local/bin/minion.sh
CMD ["/usr/local/bin/minion.sh"]
