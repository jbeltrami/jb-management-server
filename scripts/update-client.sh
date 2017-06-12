#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/clients/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "client": {
      "first_name": "'"${FIRST_NAME}"'",
      "family_name": "'"${FAMILY_NAME}"'"
    }
  }'

echo
