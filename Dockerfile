FROM debian
MAINTAINER phillip@signalsciences.com

# initial setup
RUN apt-get update
RUN apt-get install -y apt-transport-https wget sed
RUN wget -qO - https://apt.signalsciences.net/gpg.key | apt-key add -
RUN echo "deb https://apt.signalsciences.net/release/debian/ jessie main" > /etc/apt/sources.list.d/sigsci-release.list
RUN apt-get update

# install
RUN apt-get -y install sigsci-agent

# configure
COPY agent.conf /etc/sigsci/agent.conf

CMD /usr/sbin/sigsci-agent
