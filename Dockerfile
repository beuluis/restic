FROM mazzolino/restic:1.5

RUN apk add --no-cache perl-net-ssleay perl-net-dns swaks --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/
