# Dataloop.IO on Ubuntu
#
# VERSION               0.1

FROM ubuntu
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y build-essential curl python-dev python-pip
RUN pip install argparse psutil requests
RUN curl -o /usr/local/bin/dataloop-lin-agent http://git.dataloop.io/download/dataloop-lin-agent
RUN chmod +x /usr/local/bin/dataloop-lin-agent
CMD    ["/usr/local/bin/dataloop-lin-agent", "--api-key", "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx", "--tags", ""]
