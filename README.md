### Docker image with Dataloop.IO agent installed

Run directly from docker hub:

```
sudo docker run \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:rw \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --detach=true \
  --name=dataloop-docker \
  --hostname=`hostname` \
  -e API_KEY={API_KEY} \
  dataloop/dataloop-docker
```

Where {API_KEY} should match the key in the Dataloop UI and signup email.

You should put a single dataloop/dataloop-docker container on each physical docker host.

### To build the Docker locally

1. clone repo
1. docker build -t dataloop-docker .
1. start container

```
sudo docker run \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:rw \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --detach=true \
  --name=dataloop-docker \
  -e API_KEY=$API_KEY \
  dataloop-docker
```
