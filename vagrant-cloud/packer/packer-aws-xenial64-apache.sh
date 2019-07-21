#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Uso: $0 \"descripcion_version\""
    exit 1
fi
DESCRIPCION_VERSION=$1
packer build -force -var "version_description=${DESCRIPCION_VERSION}" -except=vagrant-builder xenial64-apache.json
