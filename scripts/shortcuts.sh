#!/bin/sh
AZ_IMAGE_NAME="aztemplate"
AZ_CONTAINER_NAME="az-template"
alias dbuild="docker build -t ${AZ_IMAGE_NAME} ."
alias dncbuild="docker build --no-cache -t ${AZ_IMAGE_NAME} ."
alias drun="docker-compose up -d"
alias dclear="docker container stop ${AZ_CONTAINER_NAME} ; docker container rm ${AZ_CONTAINER_NAME}"
alias dsh="docker exec -it ${AZ_CONTAINER_NAME} bash"
alias dprune="docker container prune ; docker image prune"
