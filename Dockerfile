FROM ubuntu

MAINTAINER Dataloop <info@dataloop.io>

RUN apt-get install -y apt-transport-https

# Install the Agent
RUN echo 'deb https://download.dataloop.io/deb/ stable main' > /etc/apt/sources.list.d/dataloop.list
ADD https://download.dataloop.io/pubkey.gpg /pubkey.gpg
RUN apt-key add pubkey.gpg && apt-get update && apt-get install -y dataloop-agent
ADD agent.yaml /etc/dataloop/agent.yaml

# Add cadvisor binary
ADD https://download.dataloop.io/container/cadvisor /usr/bin/cadvisor
RUN chmod +x /usr/bin/cadvisor

# Start the Agent
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/dataloop-agent", "--config", "/etc/dataloop/agent.yaml"]
