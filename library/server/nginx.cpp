/* 
 * /etc/nginx/sites-available
 */
upstream app_server {
    server 127.0.0.1:9000 fail_timeout=0;
}

server {
    listen 80 default_server;
    listen [::]:80 default_server ipv6only=on;

    root /usr/share/nginx/html;
    index index.html index.htm;

    client_max_body_size 4G;
    server_name _;

    keepalive_timeout 5;

    # Your Django project's media files - amend as required
    location /media  {
        alias /home/django/bodybag/media;
    }

    # your Django project's static files - amend as required
    location /static {
        alias /home/django//bodybag/static;
    }

    location / {
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header Host $http_host;
        proxy_redirect off;
        proxy_pass http://app_server;
    }
}

/* 
 * /etc/init/gunicorn.conf
 */
description "Gunicorn daemon for Django project"

start on (local-filesystems and net-device-up IFACE=eth0)
stop on runlevel [!12345]

# If the process quits unexpectadly trigger a respawn
respawn

setuid django
setgid django
chdir /home/django

exec gunicorn \
    --name=bodybag \
    --pythonpath=bodybag \
    --bind=0.0.0.0:9000 \
    --config /etc/gunicorn.d/gunicorn.py \
    django_wsgi:application
