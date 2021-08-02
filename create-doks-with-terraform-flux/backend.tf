# Store the state file using DO Spaces
# DO Spaces is a S3-compatible object storage so the meaning of the properties used down below is the same

terraform {
  backend "s3" {
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    endpoint                    = "https://fra1.digitaloceanspaces.com" # replace this with your DO Spaces endpoint
    region                      = "us-east-1"         # leave this as is
    bucket                      = "tf-flux"           # replace this with your bucket name
    key                         = "terraform.tfstate" # replaces this with your full path if the state file is not in the "root folder" of your bucket
  }
}
