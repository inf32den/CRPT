#!/bin/bash

# Пасс реквест
read -p "Введите новый пароль для пользователя: " new_password
echo "user:$new_password" | sudo chpasswd

# Имя и пароль
read -p "Введите имя для нового пользователя: " new_username
read -p "Введите пароль для нового пользователя: " new_user_password
sudo useradd $new_username --create-home --shell /bin/bash
echo "$new_username:$new_user_password" | sudo chpasswd

# SSH
read -p "Введите порт для SSH, который желаете использовать: " new_port
sudo sed -i "s/#Port 22/Port $new_port/" /etc/ssh/sshd_config
sudo systemctl restart sshd
