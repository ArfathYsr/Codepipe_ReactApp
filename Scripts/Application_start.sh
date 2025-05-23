#!/bin/bash
echo "Deploying React app to Apache2..."

# Clear existing Apache root content
sudo rm -rf /var/www/html/*

# Copy new build to Apache root
sudo cp -r /home/ubuntu/react2/build/* /var/www/html/

# Restart Apache
sudo systemctl restart apache2

echo "Deployment complete. React app is live on Apache2."