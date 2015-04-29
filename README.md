Docker image with Dataloop.IO agent installed

1. clone repo
1. docker build -t dataloop-docker .
1. docker run -e API_KEY=$API_KEY dataloop-docker:latest