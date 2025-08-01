FROM openresty/openresty:bookworm-fat

COPY nginx/default.conf /etc/nginx/conf.d/
COPY nginx/nginx.conf /etc/nginx/
COPY nginx/csp-log.lua /usr/share/nginx/lua/

COPY content/index.html /usr/share/nginx/html/
COPY content/NoXSS.drawio.png /usr/share/nginx/html/

