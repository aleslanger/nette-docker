#!/bin/bash

ARG=${1:-help}

Help() {
  echo "build  - Build docker containers"
  echo "up  - Run docker containers"
  echo "down  - Stop docker containers"
  echo "install  - composer install"
  echo "update  - composer update"
}

Up() {
  docker-compose -f docker-compose.yml up -d
}

Down() {
  docker-compose -f docker-compose.yml down
}

Build() {
  docker-compose -f docker-compose.yml build
}

Install() {
  winpty docker exec -it php bash -c 'composer install'

}

Update() {
  winpty docker exec -it php bash -c 'composer update'

}

case $ARG in
help)
  Help
  exit
  ;;
up)
  Up
  exit
  ;;
build)
  Build
  exit
  ;;
down)
  Down
  exit
  ;;
install)
  Install
  exit
  ;;
update)
  Update
  exit
  ;;
esac
