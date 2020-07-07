FROM alpine:latest

RUN apk add --no-cache bash ca-certificates curl

COPY get_snyk_binary.sh /get_snyk_binary.sh

ENTRYPOINT ["/get_snyk_binary.sh"]
