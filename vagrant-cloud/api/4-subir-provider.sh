#!/bin/bash

# Subir un provider
response=$(curl \
  --header "Authorization: Bearer $VAGRANT_CLOUD_TOKEN" \
  https://app.vagrantup.com/api/v1/box/jarfernandez/trusty64-apache/version/0.0.1/provider/virtualbox/upload)

# Require el comando jq
upload_path=$(echo $response | jq .upload_path | sed 's/"//g')

curl -v $upload_path \
  --request PUT \
  --upload-file virtualbox-trusty64-apache.box
