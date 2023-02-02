#!/bin/bash


read -p "напишите disk_id backup:" backup
read -p "напишите disk_id openvpn:" openvpn
read -p "напишите disk_id monitoring:" monitoring


yc compute disk resize $backup --size 18
yc compute disk resize $openvpn --size 18
yc compute disk resize $monitoring --size 18
