#!/bin/bash


read -p "напишите disk_id backup:" backup
read -p "напишите disk_id openvpn:" openvpn
read -p "напишите disk_id monitoring:" monitoring

yc compute instance stop backup
yc compute instance stop openvpn
yc compute instance stop monitoring


yc compute disk resize $backup --size 18
yc compute disk resize $openvpn --size 18
yc compute disk resize $monitoring --size 18


yc compute instance start backup
yc compute instance start openvpn
yc compute instance start monitoring


yc compute instance get backup
yc compute instance get openvpn
yc compute instance get monitoring
