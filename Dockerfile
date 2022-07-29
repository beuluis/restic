FROM mazzolino/restic:1.6

RUN apk add --no-cache perl-net-ssleay perl-net-dns swaks --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/


COPY notify /
RUN chmod +x /notify
