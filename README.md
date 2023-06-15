# CRPT
Тестовое для ЦРПТ
Доброго времени суток!
---
ПО ПЕРВОМУ
---
#под 18 используем ifenslave
sudo apt update
sudo apt install ifenslave ethtool -y
#Проверим модуль
sudo lsmod | grep bonding
#Грузим если нету
sudo modprobe bonding
#Пилим в модули
sudo nano /etc/modules
#Вставляем
bonding
#Пилим бондинг
sudo nano /etc/network/interfaces.d/bond0
#Вставляем
auto bond0
iface bond0 inet static
    address 192.168.2.2
    netmask 255.255.252.0
    gateway 192.168.2.1
    bond-mode 4
    bond-miimon 100
    bond-lacp-rate 1
    bond-slaves none

#проверяем ифтопом трафик
apt-get install iftop
iftop -i bond0
iftop -i ens18
# Если поднимается
iftop -i ens19

---
ПО ВТОРОМУ 
скрипты интерактив, и фикс - в корне
