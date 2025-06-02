output "lambda_urls" {
  type = list(string)
  description = "URLs to invoke lambda functions"
  value = [ for x in component.lambda: x.invoke_arn ]
}

output "function_urls" {
  type = list(string)
  description = "URLs to latest function"
  value = [ for x in component.lambda: x.function_url ]
}
