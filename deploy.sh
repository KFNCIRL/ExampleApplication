#!/usr/bin/env bash
sudo apt-get update && sudo apt-get install nodejs npm
# Install pm2 and nodejs load balancer
sudo npm install -g pm2
# stop any instances
pm2 stop example_app
# change dir
cd ExampleApplication/
# install dependencies
npm install
# start applciation 
pm2 start ./bin/www --name example_app