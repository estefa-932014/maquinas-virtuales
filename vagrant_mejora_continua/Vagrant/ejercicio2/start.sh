#!/bin/bash
LRED='\033[1;31m'
LGREEN='\033[1;32m'
NC='\033[0m'
LBLUE='\033[0;34m'
LYELLOW='\033[1;33m'
repo="clases-practicas-bootcamp-devops-2023"
project="app-295devops-travel"
branch="main"

if [ -d "$repo" ] ; then
    echo "Existe repo"
    cd $repo
    git pull origin $branch
    git checkout $branch
    #llamado a la función de copia de archivos estaticos
    echo -e "\n${LBLUE} Archivos estaticos copiados.${NC}"
    docker-compose up -d --build
else
    echo -e "\n${LYELLOW} Se clonará el repositorio.${NC}"
    git clone https://github.com/estefa-932014/$repo.git
    cd $repo/
    git checkout $branch
    docker-compose up -d --build
fi