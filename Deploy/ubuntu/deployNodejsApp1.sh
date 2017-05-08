sudo apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
sudo npm install -g -y pm2
sudo apt-get install -y nginx
sudo apt-get update
sudo rm /etc/nginx/sites-enabled/default
sudo cp ./nodeapp/packer-demo/NodejsApp/NodejsWebApp1/Deploy/ubuntu/node-app-nginx-config /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/node-app-nginx-config /etc/nginx/sites-enabled/node-app-nginx-config
sudo service nginx restart
sudo pm2 start ./nodeapp/packer-demo/NodejsApp/NodejsWebApp1/server.js
sudo pm2 save
sudo pm2 startup