FROM debian:stable-slim

# COPY source destination
COPY docker_goserver /bin/goserver

ENV PORT=8991

CMD ["/bin/goserver"]

