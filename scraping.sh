#!/bin/bash

# Nama file untuk menyimpan hasil
output_file="performa_server.csv"

# Mengecek penggunaan CPU
cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')

# Mengecek penggunaan memori
mem_total=$(free | awk '/^Mem:/{print $2}')
mem_used=$(free | awk '/^Mem:/{print $3}')
mem_usage=$((mem_used * 100 / mem_total))

# Mengecek penggunaan disk
disk_usage=$(df -h / | awk 'NR==2 {print $5}')

# Mengecek penggunaan jaringan
network_usage=$(ifstat | awk 'NR==3 {print "Download: "$6" Upload: "$8}')

# Menuliskan hasil ke dalam file CSV
echo "$(date +"%Y-%m-%d %H:%M:%S"),$cpu_usage%,$mem_usage%,$disk_usage,$network_usage" >> $output_file

echo "Data berhasil disimpan ke dalam file $output_file"
