FROM debian:bullseye-slim
RUN apt-get update && apt-get install -y openssl shellinabox ssh

ENV IP 127.0.0.1
ENV PORT 4200

CMD ["sh", "-c", "shellinaboxd -p $PORT -s /:SSH:$IP --disable-ssl"]
