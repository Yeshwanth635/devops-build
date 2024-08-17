#!/bin/bash

# Defining the image name
IMAGE_NAME=$1
TAG="latest" 
# Building the Docker image using Docker Compose..
echo "Building Docker image: $IMAGE_NAME"
docker build -t $IMAGE_NAME:$TAG

# Checking if the build was successful
if [ $? -eq 0 ]; then
    echo "Docker image built successfully: $IMAGE_NAME:$TAG"
else
    echo "Error: Docker image build failed."
    exit 1
fi