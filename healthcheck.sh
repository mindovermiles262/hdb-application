#!/bin/bash

set -aeou pipefail

curl -sS http://localhost:9925 > /dev/null

if curl -sk "https://localhost:9926/healthz" | grep -q "Error\: Must login"; then
  echo "Text found in response"
else
  exit 1
fi