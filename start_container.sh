#!/bin/bash

# Define the local source directory (change this to your local project path)
LOCAL_PROJECT_DIR="."

# Define the container image name
IMAGE_NAME="roguelike-ts-app"

# Run the container with mounted source directory and X11 forwarding
podman run -it --rm \
    -p "8000:8000" \
    -v "$LOCAL_PROJECT_DIR:/usr/src/app:z" \
    -v "/usr/src/app/node_modules" \
    "$IMAGE_NAME"
