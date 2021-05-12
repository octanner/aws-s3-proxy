#!/bin/sh

if [[ ! -z "${AWS_ACCESS_KEY_ID}" ]]; then
    export S3PROXY_IDENTITY="${AWS_ACCESS_KEY_ID}"
    export JCLOUDS_IDENTITY="${AWS_ACCESS_KEY_ID}"
fi

if [[ ! -z "${AWS_SECRET_ACCESS_KEY}" ]]; then
    export S3PROXY_CREDENTIAL="${AWS_SECRET_ACCESS_KEY}"
    export JCLOUDS_CREDENTIAL="${AWS_SECRET_ACCESS_KEY}"
fi

exec /opt/s3proxy/run-docker-container.sh
