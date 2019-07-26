#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

curl \
	--verbose \
	--header "Authorization: Token 3af70274-2cd7-46f7-8d83-f8c96487bb0e" \
	--header "Content-Type: application/json" \
	--data "{\"value\":10,\"sha\":\"${CIRCLE_SHA1}\"}" \
	"https://noname.serveo.net/api/repos/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}/awesome/values"

exit 0