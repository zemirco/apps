#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

curl \
	--verbose \
	--header "Authorization: Token 6d55cb11-16ee-47f6-b477-45fbe19ca8af" \
	--header "Content-Type: application/json" \
	--data "{\"value\":4,\"sha\":\"${CIRCLE_SHA1}\"}" \
	"https://dev.mircozeiss.com/api/repos/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}/foo/values"

exit 0