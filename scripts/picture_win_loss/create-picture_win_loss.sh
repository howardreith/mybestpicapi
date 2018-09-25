#!/bin/bash

curl "http://localhost:4741/picture_win_losses" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "picture_win_loss": {
      "picture_id": "'"${picture_id}"'",
      "evaluating_user_id": "'"${evaluating_user_id}"'",
      "winning_picture_id": "'"${winning_picture_id}"'",
      "losing_picture_id": "'"${losing_picture_id}"'",
      "weight": "'"${weight}"'"
    }
  }'

echo
