#!/bin/bash

source ./common.sh



#######################################################################################################
#
# Fly.io deploy
#

yecho Deploying blog to Fly

npm run build 
fly deploy --config ./fly.toml --dockerfile ./Dockerfile