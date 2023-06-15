new_password=xxxx
new_username=xxxx
new_user_password=xxxx
new_port=xxx
echo "user:$new_password" | sudo chpasswd
sudo useradd $new_username --create-home --shell /bin/bash
echo "$new_username:$new_user_password" | sudo chpasswd
sudo sed -i "s/#Port 22/Port $new_port/" /etc/ssh/sshd_config
sudo systemctl restart sshd
