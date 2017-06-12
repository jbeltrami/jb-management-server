#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/services"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "service": {
      "description": "'"${DESCRIPTION}"'",
      "service_date": "'"${SERVICE_DATE}"'",
      "price": "'"${PRICE}"'",
      "client_id": "'"${CLIENT_ID}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
