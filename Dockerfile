FROM mazzolino/restic:1.5

RUN apk add --no-cache swaks --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/
