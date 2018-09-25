#!/bin/bash

curl "http://localhost:4741/picture_infos" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "picture_info": {
      "picture_id": "'"${picture_id}"'",
      "aws_id": "'"${aws_id}"'",
      "title": "'"${title}"'",
      "filename": "'"${filename}"'",
      "filepath": "'"${filepath}"'",
      "aws_url": "'"${aws_url}"'"
    }
  }'

echo
