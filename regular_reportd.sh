echo "To: lianghaoyi91@gmail.com" > /home/pi/ip_info_tmp.txt
echo "From: matlabhaoyi@gmail.com" >> /home/pi/ip_info_tmp.txt
echo "Subject: Pi boots on " >> /home/pi/ip_info_tmp.txt
head -c -1 -q /home/pi/ip_info_tmp.txt  /home/pi/boots_time.txt > /home/pi/ip_info.txt
echo "\n">> /home/pi/ip_info.txt

/sbin/ifconfig | grep -w inet | tail -1 | sed -e 's/^[ \t]*//' >> /home/pi/ip_info.txt
/bin/cat /home/pi/ip_info.txt |  /usr/bin/msmtp lianghaoyi91@gmail.com

