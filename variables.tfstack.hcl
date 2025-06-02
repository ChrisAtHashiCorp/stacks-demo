# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "regions" {
  type = set(string)
}

variable "access_key" {
  type = string
  ephemeral = true
}

variable "secret_key" {
  type = string
  sensitive = true
  ephemeral = true
}

variable "session_token" {
  type = string
  sensitive = true
  ephemeral = true
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  default     = {}
}
