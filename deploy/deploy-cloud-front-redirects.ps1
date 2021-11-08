sam deploy `
    --template-file $PSScriptRoot/../infrastructure/cloud-front-redirects.yaml `
    --stack-name cloud-front-redirects `
    --s3-bucket [s3-bucket-name]  `
    --s3-prefix cloud-front-redirects `
    --capabilities CAPABILITY_NAMED_IAM `
    --region us-east-1 `
    --no-fail-on-empty-changeset;