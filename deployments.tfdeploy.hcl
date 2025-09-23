# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

store "varset" "tokens" {
  id       = "varset-v8swpyY7Vo9tdkYT"
  category = "env"
}

deployment "development" {
  destroy = true
  inputs = {
    regions        = ["us-east-1"]
    access_key = store.varset.tokens.AWS_ACCESS_KEY_ID    
    secret_key = store.varset.tokens.AWS_SECRET_ACCESS_KEY
    session_token = store.varset.tokens.AWS_SESSION_TOKEN
    default_tags   = { stacks-preview-example = "lambda-component-expansion-stack" }
  }
}

deployment "production" {
  destroy = true
  inputs = {
    regions        = ["us-east-1", "us-west-1"]
    access_key = store.varset.tokens.AWS_ACCESS_KEY_ID    
    secret_key = store.varset.tokens.AWS_SECRET_ACCESS_KEY
    session_token = store.varset.tokens.AWS_SESSION_TOKEN
    default_tags   = { stacks-preview-example = "lambda-component-expansion-stack" }
  }
}
