#!/bin/bash
ROLE_ARN="$(aws ecs describe-task-definition --task-definition agcars-frontend --region me-south-1 | jq .taskDefinition.executionRoleArn)"
echo "ROLE_ARN= " $ROLE_ARN
