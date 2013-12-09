# Dataloop.IO on Ubuntu
#
# VERSION               0.1

FROM ubuntu
MAINTAINER Steven Acreman "steven.acreman@dataloop.io"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y build-essential python-dev python-pip apache2 supervisor
RUN pip install argparse psutil

# Add Dataloop.io monitoring
ADD http://git.dataloop.io/download/dataloop-lin-agent /usr/local/bin/dataloop-lin-agent
RUN chmod +x /usr/local/bin/dataloop-lin-agent
ADD dataloop.conf /etc/supervisor/conf.d/dataloop.conf

ADD apache2.conf /etc/supervisor/conf.d/apache2.conf
EXPOSE 80 443

CMD ["/usr/bin/supervisord", "-n"]
