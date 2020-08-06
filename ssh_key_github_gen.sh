#!/bin/bash

echo Insira o email para criação da chave SSh:
read email
exec('ssh-keygen -t rsa -b 4096 -C "$email"')

exec('eval "$(ssh-agent -s)"')

exec('ssh-add ~/.ssh/id_rsa')

