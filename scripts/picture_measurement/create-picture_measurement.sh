#!/bin/bash

curl "http://localhost:4741/picture_measurements" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "picture_measurement": {
      "picture_id": "'"${picture_id}"'",
      "picture_rating": "'"${picture_rating}"'"
    }
  }'

echo
