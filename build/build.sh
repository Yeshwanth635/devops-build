#!/bin/bash

# Defining the image name
IMAGE_NAME="yeshwanth2435/dev"

# Building the Docker image using Docker Compose..
echo "Building Docker image: $IMAGE_NAME"
docker compose build

# Checking if the build was successful
if [ $? -eq 0 ]; then
    echo "Docker image built successfully: $IMAGE_NAME"
else
    echo "Error: Docker image build failed."
    exit 1
fi