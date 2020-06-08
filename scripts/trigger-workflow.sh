#!/bin/bash

set -e

SECRET_NAME=${SECRET_NAME:-github-private-packages-token}
PROJECT_ID=${PROJECT_ID:-parsley-development}
REPO=${REPO:-cz-changelog}
EVENT_TYPE=${1:-test}

ensure_token() {
  if [[ -z "${GITHUB_TOKEN}" ]]; then
    GITHUB_TOKEN=$(gcloud secrets versions access latest \
      --secret=${SECRET_NAME} \
      --project=${PROJECT_ID})
  fi

  if [[ -z "${GITHUB_TOKEN}" ]]; then
    echo "could not load a github token"
    exit 1
  fi
}

trigger_workflow() {
  curl --silent --fail \
    --header "Accept: application/vnd.github.everest-preview+json" \
    --header "Authorization: token ${GITHUB_TOKEN}" \
    --data "{ \"event_type\": \"${EVENT_TYPE}\" }" \
    https://api.github.com/repos/parsleyhealth/${REPO}/dispatches

  echo "workflow event '${EVENT_TYPE}' triggered in repo '${REPO}'"
}

ensure_token
trigger_workflow
