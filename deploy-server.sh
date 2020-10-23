#!/bin/bash

ssh root@104.248.113.94 << EOF
    docker exec -it 41ee76b04a40 sh 
    cd web 
    git pull origin master
EOF