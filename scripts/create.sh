curl --include --request POST http://localhost:3000/creations \
  --header "Authorization: Token token=BAhJIiUwNDFkMDE1MjIxMTViZWNiMmU2NDY1NTBjYmVlNWIyZQY6BkVG--4f9fffd25e6867c8ee3a1775c7841f27134ea4ef" \
  --header "Content-Type: application/json" \
  --data '{
    "creation": {
      “title": "burn",
      "picture": "url.com",
      "artist_name": "poop",
      "description": "ciiiiiiii"
    }
}'
