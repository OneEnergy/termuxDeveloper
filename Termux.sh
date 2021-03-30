#!/bin/bash

echo Bem vindo
sleep 2

navigation_bar() {

  echo "[1] Criando a pasta .termux na HOME"
  mkdir -p $HOME/.termux
  sleep 1
  echo
  echo "[2] Alterando as barras de navegação do Termux"
  echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" >> $HOME/.termux/termux.properties
  sleep 2
  echo
  echo "[3] Agora reiniciando UI do Termux"
  termux-reload-settings
  sleep 2
  echo "Instalação finalizada!"
  echo "Por favor, reinicie o Termux"

}
instalar() {
  echo Atualizando e instalando arquivos necessarios
  sleep 2
  pkg update -y && pkg upgrade -y
  sleep 1
  pkg install -y mariadb nodejs vim  git curl zsh
  sleep 1
  echo instalação feita
}
ql() {

  echo iniciando servidor mysql
  mysqld &
  sleep 4
  echo Criando usuário
  ./script.sh

  exit 0
}
instalar
navigation_bar
ql


exit 0
