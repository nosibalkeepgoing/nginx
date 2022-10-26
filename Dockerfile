FROM nginx:latest
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN apt update && apt install wget
RUN wget http://100.100.100.111:800/default.conf -O /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD nginx -g 'daemon off;'
