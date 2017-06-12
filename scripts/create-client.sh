#!/bin/bash
TOKEN=BAhJIiU3Zjc5ZTUwMTkyM2M3NjNhZTNmZDRkMzA2YzAyMzgzYgY6BkVG--ad1cdabc0204a8ae0b6df01a1d04ad2ebb945ce2
FIRSTNAME=Joao
FAMILYNAME=Beltrami
BORNON=06-22-1991
EMAIL=joao_beltrami@hotmail.com

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/clients"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "client": {
      "first_name": "'"${FIRSTNAME}"'",
      "family_name": "'"${FAMILYNAME}"'",
      "born_on": "'"${BORNON}"'",
      "email": "'"${EMAIL}"'"
    }
  }'

echo
