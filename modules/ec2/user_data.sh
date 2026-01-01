#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
systemctl start nginx
systemctl enable nginx

echo "<h1>Deployed with Terraform</h1> <p>Created by Sachindra</p>" > /usr/share/nginx/html/index.html
