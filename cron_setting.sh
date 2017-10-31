echo "To: lianghaoyi91@gmail.com" > /home/pi/ip_info.txt
echo "From: matlabhaoyi@gmail.com" >> /home/pi/ip_info.txt
echo "Subject: IP raspberry pi" >> /home/pi/ip_info.txt

echo "" >> /home/pi/ip_info.txt
echo "raspberry pi boots at:" >> /home/pi/ip_info.txt
date >> /home/pi/ip_info.txt
echo "" >> /home/pi/ip_info.txt
/sbin/ifconfig  >> /home/pi/ip_info.txt
/bin/cat /home/pi/ip_info.txt |  /usr/bin/msmtp lianghaoyi91@gmail.com

sudo systemctl restart ssh
