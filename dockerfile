#FROM openresty/openresty:bookworm-fat

FROM ubuntu:22.04

RUN apt update -y && apt install -y nginx

COPY nginx/default.conf /etc/nginx/conf.d/
COPY nginx/nginx.conf /etc/nginx/

COPY content/index.html /usr/share/nginx/html/
COPY content/NoXSS.drawio.png /usr/share/nginx/html/

RUN nginx -t

CMD [ "nginx", "-g", "daemon off;" ]