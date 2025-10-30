terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      HashiCorpLearnTutorial = "no-code-modules"
      created_by             = "ymurdza"
    }
  }
}

resource "aws_ecs_cluster" "cluster" {
  name = format("%-ecs-cluster", var.name)
}
