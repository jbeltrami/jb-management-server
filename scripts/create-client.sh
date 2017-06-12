#!/bin/bash
TOKEN=BAhJIiUwNjU3NzgyNTQ5YjU3ZjE3MzRlZGViZmZjNmI1M2VmNgY6BkVG--a4c9ce5e8e7d5226ef2b605465c605f25a06098c
FIRSTNAME=Joao
FAMILYNAME=Beltrami
BORNON=06/22/1991
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
