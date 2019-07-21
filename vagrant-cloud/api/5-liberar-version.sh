#!/bin/bash

# Liberar una versión
curl \
  --header "Authorization: Bearer $VAGRANT_CLOUD_TOKEN" \
  https://app.vagrantup.com/api/v1/box/jarfernandez/trusty64-apache/version/0.0.1/release \
  --request PUT
