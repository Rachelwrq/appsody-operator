#!/bin/bash
set -Eeo pipefail
oc cluster up --skip-registry-check=true
oc login -u system:admin
operator-sdk test local github.com/appsody-operator/test/e2e