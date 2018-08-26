FROM nginx:latest

RUN mkdir /webserver/ 
COPY /ssl/webserver.crt /etc/nginx/server.crt 
COPY /ssl/webserver.key /etc/nginx/server.key
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

COPY buildPage.sh /
COPY start.sh /

ENTRYPOINT /start.sh

