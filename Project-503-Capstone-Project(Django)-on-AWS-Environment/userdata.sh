#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"    
git clone https://$TOKEN@https://github.com/seymamece/Aws_Capstone_Project.git
cd /home/ubuntu/Aws_Capstone_Project
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/Aws_Capstone_Project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80