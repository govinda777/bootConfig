# Update SO

sudo apt-get update

# Instalação do Node

sudo apt install nodejs npm

# Instalação do Visual Studio

sudo snap install --classic code

# CURL 

sudo apt install curl

# Instalação do 1 Password

curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg

echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list

sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
 curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
 sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
 curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg

 sudo apt update && sudo apt install 1password

 # Link como configurar o 1 Password
# 
#  SECRET KEY : AA-AAAAAA-AAAAA-AAAAAAA
# 
#  user name : <your.user.name.email>
# 
#  pass : <you.pass>


# Git install

sudo apt install git

# Docker install

 sudo addgroup --system docker
 sudo adduser $USER docker
 newgrp docker
sudo snap install docker
 docker pull hello-world

# Como configurar o e-mail

https://support.google.com/mail/answer/7104828?hl=pt-BR&visit_id=637945731336915975-2991441972&rd=1

# chromium install

sudo snap install chromium

# Angular cli

npm install -g @angular/cli

# Install Chrome

uname -m
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable
sudo apt-get remove google-chrome-stable


# Install node

https://stackoverflow.com/questions/8191459/how-do-i-update-node-js

sudo npm cache clean -f
sudo npm install -g n
sudo n stable

# Install Terraform

sudo snap install terraform --classic