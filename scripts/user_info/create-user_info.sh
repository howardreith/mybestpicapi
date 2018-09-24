#!/bin/bash

curl "http://localhost:4741/user_infos" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "user_info": {
      "email": "'"${email}"'",
      "gender": "'"${gender}"'",
      "user_id": "'"${user_id}"'"
    }
  }'

echo
