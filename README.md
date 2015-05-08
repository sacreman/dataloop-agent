Docker image with Dataloop.IO agent installed

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
