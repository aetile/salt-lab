FROM aetile/ubuntu-with-sudo:try

RUN sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common curl
RUN sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
RUN sudo apt-get update
RUN sudo apt-get -y install docker-ce
RUN sudo rm -f /usr/bin/docker-compose /usr/local/bin/docker-compose
RUN sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN sudo chmod +x /usr/local/bin/docker-compose
RUN sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
CMD sudo service docker start
USER docker
