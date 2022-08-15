#!/bin/bash
if [ ! -d "./world" ]; then
    echo "'./world' directory not exist, please try to making world directory first!"
    exit
fi


docker build --no-cache --tag docker-paper-server:latest --build-arg VELOCITY_SECRET=SAMPLE_VELOCITY_SECRET .