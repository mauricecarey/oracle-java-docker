# Docker Image for Ubuntu with Oracle Java 
This is a simple Dockerfile to create a docker image with Oracle JDK 8 installed.

## Building and pushing to Docker Hub
    docker build --tag ubuntu-java --file=java.dockerfile .
    docker tag ubuntu-java mmcarey/ubuntu-java:latest
    docker login
    docker push mmcarey/ubuntu-java:latest

## TODO
This can likely be optimized to reduce the image size.
