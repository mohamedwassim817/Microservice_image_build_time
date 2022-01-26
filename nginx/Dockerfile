FROM debian:latest
RUN apt-get update \
&& apt-get install -y nginx
COPY /usr/data/html /
ENTRYPOINT ["nginx","-g","deamon off" ]

