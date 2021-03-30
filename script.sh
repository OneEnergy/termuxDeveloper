#!/bin/bash

account (){
sleep 1
# Change or username to whichever you prefer, and your password must be inserted after (identified by) in quotation marks.
mysql -u $(whoami) -e "CREATE USER 'kaue'@'localhost' IDENTIFIED BY '1232'"
echo Usuário criado.
sleep 1
echo Dando permissões
sleep 1
# Enter your username to give permissions.
mysql -u $(whoami) -e "GRANT ALL PRIVILEGES ON *.* TO 'kaue'@'localhost'"
sleep 2
mysql -u $(whoami) -e "FLUSH PRIVILEGES"
}

account