#!/bin/sh

kubectl create secret docker-registry mydockerhubrsecret \
  --docker-username=myusername \
  --docker-password=mypassword \
  --docker-email=my.email@provider.com