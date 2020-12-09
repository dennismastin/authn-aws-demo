#!/bin/bash

role=$(curl -s http://169.254.169.254/latest/meta-data/iam/security-credentials)

echo "Retrieving the authN token for role: $role"

curl -s http://169.254.169.254/latest/meta-data/iam/security-credentials/$role | jq .
