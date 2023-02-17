#!/bin/bash
ROLE_ARN="$(aws ecs describe-task-definition --task-definition AG-Power --region me-south-1 | jq .taskDefinition.executionRoleArn)"
echo "ROLE_ARN= " $ROLE_ARN

FAMILY="$(aws ecs describe-task-definition --task-definition AG-Power --region me-south-1 | jq .taskDefinition.family)"
echo "FAMILY= " $FAMILY