#!/bin/bash

STACK_NAME=core-build
GIT_REPO=codebuild-docker-image
GIT_TOKEN=
GIT_USER=

aws cloudformation create-stack \
  --stack-name $STACK_NAME \
  --template-body file://cicd.cfn.yml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
  ParameterKey=GitSourceRepo,ParameterValue=$GIT_REPO \
  ParameterKey=GitHubToken,ParameterValue=$GIT_TOKEN \
  ParameterKey=GitHubUser,ParameterValue=$GIT_USER

