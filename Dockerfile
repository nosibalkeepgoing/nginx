FROM nginx:latest
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN apt update && apt-get install wget
EXPOSE 80
CMD wget http://100.100.100.111:800/default.conf -O /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
