#!/bin/bash

# Crear un nuevo provider
curl \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer $VAGRANT_CLOUD_TOKEN" \
  https://app.vagrantup.com/api/v1/box/jarfernandez/trusty64-apache/version/0.0.1/providers \
  --data '
    {
      "provider": {
        "name": "virtualbox"
      }
    }
  '
