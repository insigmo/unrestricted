sudo apt update
sudo apt install certbot ufw -y


sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 2053/tcp

sudo certbot certonly --standalone -d $1

mkdir cert
sudo cp /etc/letsencrypt/live/$1/fullchain.pem cert/
sudo cp /etc/letsencrypt/live/$1/privkey.pem  cert/
