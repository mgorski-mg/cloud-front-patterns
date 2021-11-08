sam deploy `
    --template-file $PSScriptRoot/../infrastructure/cloud-front-headers.yaml `
    --stack-name cloud-front-headers `
    --s3-bucket [s3-bucket-name]  `
    --s3-prefix cloud-front-headers `
    --capabilities CAPABILITY_NAMED_IAM `
    --region us-east-1 `
    --no-fail-on-empty-changeset;