# Amazon CloudFront Patterns

Sample app containing examples of CloudFront Patterns.

## Patterns

* cloud-front-functions.yaml
    * Add security headers using CloudFront Function \[Obsolete solution\]
* cloud-front-headers.yaml
    * Add security headers using Response Headers Policy
* cloud-front-redirects.yaml
    * Redirect based on country using CloudFront Function
    * Redirect non www to www using CloudFront Function

## Logging

In `logging` folder there are sql scripts for AWS Athena operating on CloudFront logs. AWS documentation about operating on ClodFront logging can be found [here](https://docs.aws.amazon.com/athena/latest/ug/cloudfront-logs.html).

* cloudfront-create-log-table.sql
* cloudfront-find-403-and-404-uris.sql
* cloudfront-find-all-error-uris.sql
* cloudfront-find-all-error-uris-without-ever-successful.sql

## Setup

### Prerequisites

* Powershell Core
* SAM cli

## Deployment

### Required variables to be set - deploy.ps1

* \[s3-bucket-name\] -> name of the Amazon S3 Bucket used to deploy AWS CloudFormation stacks.

### Deploy

```powershell
deploy.ps1
```