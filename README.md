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

Run cAdvisor as per:

    https://github.com/google/cadvisor

Link the dataloop-docker container to it:

```
API_KEY=<insert your key>
sudo docker run \
  --volume=/var/run/docker.sock:/var/run/docker.sock \
  --detach=true \
  --name=dataloop-docker \
  --hostname=$(hostname) \
  -e API_KEY=$API_KEY \
  --link cadvisor:cadvisor \
  dataloop/dataloop-docker
```

