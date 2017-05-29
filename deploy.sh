#!/bin/bash

scp -oStrictHostKeyChecking=no docker-compose.yml yanwsh@23.22.64.10:~/nginx.docker-compose.yml
ssh -oStrictHostKeyChecking=no yanwsh@23.22.64.10 "docker stack deploy --compose-file nginx.docker-compose.yml nginx --with-registry-auth"