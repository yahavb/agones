#!/bin/bash

region="us-west-2"
repo_url="163538056407.dkr.ecr.us-west-2.amazonaws.com/supertuxkart-example:0.2"

aws ecr get-login-password --region $region | sudo docker login --username AWS --password-stdin $repo_url
sudo docker push $repo_url
