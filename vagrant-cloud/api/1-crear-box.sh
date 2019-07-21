#!/bin/bash

# Crear una nueva box
curl \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer $VAGRANT_CLOUD_TOKEN" \
  https://app.vagrantup.com/api/v1/boxes \
  --data '
  {
    "box": {
      "username": "jarfernandez",
      "name": "trusty64-apache",
      "short_description": "Ubuntu Server 14.04 LTS (Trusty Tahr) with Apache HTTP Server",
      "description": "Ubuntu Server 14.04 LTS (Trusty Tahr) with Apache HTTP Server",
      "is_private": false
    }
  }
'
