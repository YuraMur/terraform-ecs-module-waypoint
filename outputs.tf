# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "region" {
  description = "AWS region for all resources."
  value       = var.region
}

output "ecs-cluster-name" {
  value = aws_ecs_cluster.cluster.name
}