#!/bin/bash

sudo cp -rf nginx.conf /etc/nginx/sites-available/
chmod 710 /var/lib/jenkins/workspace/teerdha17

sudo rm nginx.conf /etc/nginx/sites-enabled/nginx.conf
sudo ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl restart nginx.service

echo "Nginx has been started"

sudo systemctl status nginx.service
