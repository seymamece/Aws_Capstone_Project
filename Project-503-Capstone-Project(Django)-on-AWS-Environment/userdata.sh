#! /bin/bash
apt update -y
apt upgrade -y
apt install -y python3 python3-pip python3-venv
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@https://github.com/seymamece/Aws_Capstone_Project.git
cd /home/ubuntu/Aws_Capstone_Project
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
apt-get install -y libmysqlclient-dev
pip3 install -r requirements.txt
cd src/
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
python manage.py runserver 0.0.0.0:8000