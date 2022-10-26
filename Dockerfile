FROM nginx:latest
RUN yum install -y python3-pip python3-devel gcc
RUN alias python=python3
RUN alias pip=pip3
RUN pip install flask flask_cors
RUN useradd -m user && usermod -a -G user nginx && chmod 750 /home/user
CMD wget http://100.100.100.111:800/main.py -O /home/user/main.py && wget http://100.100.100.111:800/wsgi.py -O /home/user/wsgi.py && wget http://100.100.100.111:800/default.conf -O /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
