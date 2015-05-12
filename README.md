### Docker image with Dataloop.IO agent installed

Run directly from docker hub:

```
API_KEY=<insert your key>
sudo docker run \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:rw \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --detach=true \
  --name=dataloop-docker \
  --hostname=`hostname` \
  -e API_KEY=$API_KEY \
  dataloop/dataloop-docker
```

You should put a single dataloop/dataloop-docker container on each physical docker host.

This container has both the Dataloop Agent and Cadvisor inside.
