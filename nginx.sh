#!/bin/bash
sudo apt-get install nginx -y
sudo cp -rf app.conf /etc/nginx/cong.d

chmod 710 /var/lib/jenkins/workspace/django-cicd
sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled
sudo nginx -t 


sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been start"

sudo systemctl status nginx