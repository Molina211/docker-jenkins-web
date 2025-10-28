FROM ubuntu:22.04
LABEL maintainer="Luis Vargas <lanvargas@corhuila.edu.co>"
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*
COPY web /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
