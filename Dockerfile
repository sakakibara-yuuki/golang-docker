FROM golang:1.23.2-alpine3.20 AS development

WORKDIR /app
COPY ./web-service-gin/ ./
RUN go mod download
RUN go install github.com/air-verse/air@latest
RUN go build -o myapp main.go


FROM alpine AS product
COPY --from=development /app/myapp /usr/local/bin/myapp
