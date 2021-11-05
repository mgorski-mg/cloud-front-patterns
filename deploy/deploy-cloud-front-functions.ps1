sam deploy `
    --template-file $PSScriptRoot/infrastructure/cloud-front-functions.yaml `
    --stack-name cloud-front-functions `
    --s3-bucket [s3-bucket-name]  `
    --s3-prefix cloud-front-functions `
    --capabilities CAPABILITY_NAMED_IAM `
    --region us-east-1 `
    --no-fail-on-empty-changeset;