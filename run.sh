#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

curl \
	--verbose \
	--header "Authorization: Token ab66e217-033b-4a47-b5fc-acf06510f84e" \
	--header "Content-Type: application/json" \
	--data "{\"value\":7,\"sha\":\"${CIRCLE_SHA1}\"}" \
	"https://awesome.serveo.net/api/repos/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}/deps/values"

exit 0