#!/bin/bash

curl "http://localhost:4741/session_trackers" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "session_tracker": {
      "pictures_loaded": "'"${pictures_loaded}"'",
      "isActive": "'"${isActive}"'",
      "user_id": "'"${user_id}"'"
    }
  }'

echo
