#!/usr/bin/env bash

# get the latest fly release
wget https://github.com/fly-object-space/fly-java/releases/download/2.0.2/FlyJava-2.0.2.zip

# unzip it
yes | unzip FlyJava-2.0.2.zip

# delete the zip file
rm -rf FlyJava-2.0.2.zip

# copy out the linux executable
cp FlyJava/bin/Linux/i386/fly .

# delete the local unzipped files
rm -rf FlyJava

# run the docker file to build the image
docker build -t fly .

# delete the local executable
rm -rf fly



# Then Push the docker image to a the docker registry
# ===================================================

# Tag the latest image
# docker images    // to get the the image ID
# the use the image id as below
# docker tag 47311f5a5179 zink/fly:latest
# docker login --username=zink --password=the_password --email=nige@zinkdigital.com
# docker push zink/fly
