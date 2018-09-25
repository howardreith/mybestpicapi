#!/bin/bash

curl "http://localhost:4741/picture_flags" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "picture_flag": {
      "picture_id": "'"${picture_id}"'",
      "report_id": "'"${report_id}"'",
      "flag_category": "'"${flag_category}"'",
      "review_status": "'"${review_status}"'"
    }
  }'

echo
