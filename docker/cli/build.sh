#!/bin/bash

IMAGE_NAME="jetpack"
TAG="r32.7.1"

docker build -t ${IMAGE_NAME}:${TAG} .