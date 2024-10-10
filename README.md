# Gin Server
## Requirements
- Docker
- Docker Compose
- curl(optional)

## How to run

次で実行できます。

```bash
docker compose up
```

## Endpoints
```bash
curl -X GET http://localhost:8080/albums
curl -X GET http://localhost:8080/albums/2
curl -X POST http://localhost:8080/albums -d '{"title": "My New Album", "artist": "Me"}'
curl -X PATCH http://localhost:8080/albums/3 -d '{"title": "My Updated Album", "artist": "You"}'
curl -X DELETE http://localhost:8080/albums/3
```
Good luck!
