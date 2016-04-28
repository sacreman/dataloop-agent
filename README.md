### Docker image with Dataloop.IO agent installed

Run directly from docker hub:

```
API_KEY=<insert your key>
sudo docker run \
  --volume=/var/run/docker.sock:/var/run/docker.sock \
  --detach=true \
  --name=dataloop-agent \
  --hostname=$(hostname) \
  -e API_KEY=$API_KEY \
  dataloop/dataloop-agent
```
