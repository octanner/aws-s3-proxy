# AWS-S3-Proxy

Original Docker image: `andrewgaul/s3proxy`

Provides some helpful environment variable overrides and defaults for `andrewgaul/s3proxy`:

`S3PROXY_IDENTITY` and `JCLOUDS_IDENTITY` are set with either `S3_ACCESS_KEY` or `AWS_ACCESS_KEY_ID`

`S3PROXY_CREDENTIAL`, `JCLOUDS_CREDENTIAL` are set with either `S3_SECRET_KEY` or `AWS_SECRET_ACCESS_KEY`

`JCLOUDS_REGION` and `JCLOUDS_REGIONS` are set with either `S3_REGION` or `AWS_REGION`

`JCLOUDS_ENDPOINT` is set to `https://s3.amazonaws.com`

`JCLOUDS_PROVIDER` is set to to `aws-s3`

## Example

```bash 
docker run -p 8080:80  -e AWS_ACCESS_KEY_ID='XXXXXXXXXXXXXXXXXXXX' -e AWS_SECRET_ACCESS_KEY='XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' -e AWS_REGION==us-west-2 s3proxy
```