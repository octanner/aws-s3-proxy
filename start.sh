#!/bin/sh

if [[ ! -z "${S3_ACCESS_KEY}" ]]; then
    export S3PROXY_IDENTITY="${S3_ACCESS_KEY}"
    export JCLOUDS_IDENTITY="${S3_ACCESS_KEY}"
elif [[ ! -z "${AWS_ACCESS_KEY_ID}" ]]; then
    export S3PROXY_IDENTITY="${AWS_ACCESS_KEY_ID}"
    export JCLOUDS_IDENTITY="${AWS_ACCESS_KEY_ID}"
fi

if [[ ! -z "${S3_SECRET_KEY}" ]]; then
    export S3PROXY_CREDENTIAL="${S3_SECRET_KEY}"
    export JCLOUDS_CREDENTIAL="${S3_SECRET_KEY}"
elif [[ ! -z "${AWS_SECRET_ACCESS_KEY}" ]]; then
    export S3PROXY_CREDENTIAL="${AWS_SECRET_ACCESS_KEY}"
    export JCLOUDS_CREDENTIAL="${AWS_SECRET_ACCESS_KEY}"
fi

if [[ ! -z "${S3_REGION}" ]]; then
    export JCLOUDS_REGIONS="${AWS_S3_REGION}"
    export JCLOUDS_REGION="${AWS_S3_REGION}"
elif [[ ! -z "${AWS_REGION}" ]]; then
    export JCLOUDS_REGIONS="${AWS_REGION}"
    export JCLOUDS_REGION="${AWS_REGION}"
fi

export JCLOUDS_ENDPOINT="https://s3.amazonaws.com"
export JCLOUDS_PROVIDER="aws-s3"

exec /opt/s3proxy/run-docker-container.sh
