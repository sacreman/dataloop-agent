Docker image with Dataloop.IO agent installed

1. clone repo
1. docker build -t dataloop-docker .
1. start container

```
docker run -d --name dataloop-docker -h `hostname` -v /var/run/docker.sock:/var/run/docker.sock -v /proc/mounts:/host/proc/mounts:ro -v /sys/fs/cgroup/:/host/sys/fs/cgroup:ro -e API_KEY=$API_KEY dataloop-docker
```
