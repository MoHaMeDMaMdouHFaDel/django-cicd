#!/bin/bash

if [-d "env"]
then
    echo "python virtual env exists"
else
    python3 -m venv env
fi

echo $PWD
source env/bin/activate
pip3 install -r rquirment.txt

if [-d "logs"]
then
    echo "logs dir exists"
else
    mkdir logs
    touch logs/error.log logs/access.logs
fi

sudo chmod 777 -R logs 
echo "env setup finshed"