FROM golang:1.23.2-alpine3.20 AS development

WORKDIR /app
COPY ./web-service-gin/ ./
RUN go mod download
RUN go build main.go
CMD ["/bin/sh"]


# FROM mysql AS product
# COPY --from=development /app/main /app/main
# CMD ["/app/main"]
