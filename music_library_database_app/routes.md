# REST routing (REST)

# Artists resource

## List all artists

GET /artists

Response (200) OK

a list of all artists

## Create a new artist

POST /artist

with body params:
    name = "Wild nothing"
    genre = "Indie"

    Response (200) OK
    No content just creates new resource (new artist)

