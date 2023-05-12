# bootConfig
Repositório com os comandos para a instalação do seu Workspace


## 1 - instale o ansible

## 2 - Execute o comando 

ansible-playbook setup.yml

## Update SO

sudo apt-get update

## Git 

sudo apt install git

## Instalação do Visual Studio

sudo snap install code --classic

## Instalação do npm

sudo apt install nodejs npm

## Install node

https://stackoverflow.com/questions/8191459/how-do-i-update-node-js

sudo npm cache clean -f
sudo npm install -g n
sudo n stable

## CURL 

sudo apt install curl

## Instalação do 1 Password

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

## Docker install

 sudo addgroup --system docker
 sudo adduser $USER docker
 newgrp docker
sudo snap install docker
 docker pull hello-world

## Como configurar o e-mail

https://support.google.com/mail/answer/7104828?hl=pt-BR&visit_id=637945731336915975-2991441972&rd=1

## chromium install

sudo snap install chromium

## Angular cli

sudo npm install -g @angular/cli

## Install Chrome

uname -m
sudo sh -c 'echo "deb [arch=x86_64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable

## Install Diagram

https://computingforgeeks.com/install-draw-io-desktop-application-on-ubuntu-debian-fedora/#:~:text=For%20Debian%20and%20Ubuntu%20users,deb%20build%20of%20draw.io.&text=Then%20install%20it%20with%20the%20dpkg%20command.

sudo apt update
sudo apt -y install wget curl
curl -s https://api.github.com/repos/jgraph/drawio-desktop/releases/latest | grep browser_download_url | grep '\.deb' | cut -d '"' -f 4 | wget -i -

sudo apt -f install ./drawio-amd64-*.deb

## Spootfit

sudo snap install spotify


## Java

sudo snap install openjdk

sudo apt install default-jdk

sudo apt install default-jre

## ngrok DNS

sudo snap install ngrok

## Instalação terraform

sudo snap install terraform --classic

## Pgadmin

sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add

sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

sudo apt install pgadmin4