# bootConfig
# Repositório com os comandos para a instalação do seu Workspace

# Função para verificar se o pacote está instalado
function check_package() {
  dpkg -s $1 &> /dev/null

  if [ $? -eq 0 ]; then
    echo "Package $1 is installed!"
    return 1
  else
    echo "Package $1 is NOT installed!"
    return 0
  fi
}

# Update SO
sudo apt-get update

# Git 
if check_package git; then
  sudo apt install git
fi

# Instalação do Visual Studio
if ! snap list | grep -q code; then
  sudo snap install code --classic
fi

# Instalação do npm
if check_package nodejs; then
  sudo apt install nodejs npm
fi

# CURL 
if check_package curl; then
  sudo apt install curl
fi

# Docker install
if ! snap list | grep -q docker; then
  sudo addgroup --system docker
  sudo adduser $USER docker
  newgrp docker
  sudo snap install docker
  docker pull hello-world
fi

# chromium install
if ! snap list | grep -q chromium; then
  sudo snap install chromium
fi

# Angular cli
if ! npm list -g @angular/cli; then
  sudo npm install -g @angular/cli
fi

# Install Diagram
if check_package drawio; then
  sudo apt update
  sudo apt -y install wget curl
  curl -s https://api.github.com/repos/jgraph/drawio-desktop/releases/latest | grep browser_download_url | grep '\.deb' | cut -d '"' -f 4 | wget -i -
  sudo apt -f install ./drawio-amd64-*.deb
fi

# Spootfit
if ! snap list | grep -q spotify; then
  sudo snap install spotify
fi

# Java
if check_package openjdk-11-jdk; then
  sudo apt install default-jdk
fi

# ngrok DNS
if ! snap list | grep -q ngrok; then
  sudo snap install ngrok
fi

# Instalação terraform
if ! snap list | grep -q terraform; then
  sudo snap install terraform --classic
fi

# Pgadmin
if check_package pgadmin4; then
  sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
  sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
  sudo apt install pgadmin4
fi