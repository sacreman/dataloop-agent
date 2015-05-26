### Docker image with Dataloop.IO agent installed

Run directly from docker hub:

```
API_KEY=<insert your key>
sudo docker run \
  --volume=/var/run/docker.sock:/var/run/docker.sock \
  --detach=true \
  --name=dataloop-docker \
  --hostname=$(hostname) \
  -e API_KEY=$API_KEY \
  dataloop/dataloop-docker
```

### Use with cAdvisor

Link cAdvisor to the dataloop-docker container:

```
sudo docker run\
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:rw \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --publish=8080:8080 \
  --detach=true \
  --link dataloop-docker:latest \
  --name=cadvisor \
  google/cadvisor:latest
```
