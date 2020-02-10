#!/bin/bash -a

docker run --rm -it -d \
            -v /var/run/docker.sock:/var/run/docker.sock --name deca deca/baseimage /bin/ash

docker exec -it deca docker pull jenkins/jenkins:lts
docker exec -it deca docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts

docker exec -it deca /bin/ash

docker stop deca

#docker pull jenkins/jenkins:lts
#docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts