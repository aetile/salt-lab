FROM ubuntu:20.04
USER root
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
RUN apt-get install -y gnupg iputils-ping wget
RUN wget -O - https://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
RUN echo 'deb http://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest focal main' | tee -a /etc/apt/sources.list.d/saltstack.list
RUN apt-get update
RUN apt-get install -y salt-minion
RUN mkdir /var/run/salt
RUN touch /var/run/process_responsibility_salt-minion.pid
RUN useradd docker
ADD minion.sh /usr/local/bin/minion.sh
RUN chmod +x /usr/local/bin/minion.sh
RUN chown -R docker /etc/salt /var/log/salt /var/run/salt /var/cache/salt
RUN chown docker /var/run/process_responsibility_salt-minion.pid
USER docker
CMD ["/usr/local/bin/minion.sh"]
