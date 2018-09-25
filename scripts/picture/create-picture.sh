#!/bin/bash

curl "http://localhost:4741/pictures" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "picture": {
      "user_id": "'"${user_id}"'"
    }
  }'

echo
