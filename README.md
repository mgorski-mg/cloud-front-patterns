# Amazon CloudFront Patterns

Sample app containing examples of CloudFront Patterns.

* cloud-front-functions.yaml
    * Add security headers using CloudFront Function \[Obsolete solution\]
* cloud-front-headers.yaml
    * Add security headers using Response Headers Policy
* cloud-front-redirects.yaml
    * Redirect based on country using CloudFront Function
    * Redirect non www to www using CloudFront Function

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