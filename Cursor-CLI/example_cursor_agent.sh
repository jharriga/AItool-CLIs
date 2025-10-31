#!/bin/bash
cursor-agent -p "Generate a Dockerfile which uses UBI-9 as the base image and echos 'Hello World' to the console."
podman build -t hello-world .
podman run hello-world
echo "Done"
