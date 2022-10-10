# Project 2
Docker build process
Using BBC news dataset downloaded from Kaggle

Purpose: I would like to develop a news distribution system to let people decide how much information they want to access every time. 

First step: Run in Codespaces

Create docker account, then access token, then place token in GitHub Secrets as DOCKER_HUB
docker login: docker login -u <hub-user -p $DOCKER_HUB
build and tag locally: docker build . -t <hub-user>/<repo-name>
docker push
Verify you can run it by pulling from Docker Hub: https://hub.docker.com/r/noahgift/tiny-container-demo/tags
docker run -it /:latest /bin/bash 
Example would be: docker run -it noahgift/tiny-container-demo:latest /bin/bash repeat.sh 4 hello

Second step: Run in Cloud9

run locally: docker run -it noahgift/tiny-container-demo:latest /bin/bash repeat.sh 4 hello
retag and push:
Example (replace with your info): docker push 561744971673.dkr.ecr.us-east-1.amazonaws.com/awscli:tiny
verify it runs in a new cloud9 instance: docker run -it 561744971673.dkr.ecr.us-east-1.amazonaws.com/awscli:tiny /bin/bash repeat.sh 4 hello
