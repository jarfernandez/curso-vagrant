#!/bin/bash

# Crear una nueva versión
curl \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer $VAGRANT_CLOUD_TOKEN" \
  https://app.vagrantup.com/api/v1/box/jarfernandez/trusty64-apache/versions \
  --data '
    {
      "version": {
        "version": "0.0.1",
        "description": "Initial version"
      }
    }
  '
