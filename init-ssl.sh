#!/bin/bash

# Replace YOUR_IP with the actual IP
read -p "Enter your server IP: " SERVER_IP

# Create required directories
mkdir -p nginx/certbot/conf
mkdir -p nginx/certbot/www

# Update nginx config with the IP
sed -i "s/91.206.179.11/$SERVER_IP/g" nginx/conf/default.conf

# Start nginx
docker compose up -d nginx

# Get SSL certificate
docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot \
  --email your-email@example.com --agree-tos --no-eff-email \
  -d $SERVER_IP

# Restart everything with SSL
docker compose down
docker compose up -d
