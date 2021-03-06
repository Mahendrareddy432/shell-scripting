#!/bin/bash
Install Python 3
# yum install python36 gcc python3-devel -y
Create a user for running the application
# useradd roboshop
Download the repo.
$ cd /home/roboshop
$ curl -L -s -o /tmp/payment.zip "https://github.com/roboshop-devops-project/payment/archive/main.zip"
$ unzip /tmp/payment.zip
$ mv payment-main payment
$ cd payment
Install the dependencies
# cd /home/roboshop/payment
# pip3 install -r requirements.txt
Note: Above command may fail with permission denied, So run as root user

Update the roboshop user and group id in payment.ini file.

Setup the service

# mv /home/roboshop/payment/systemd.service /etc/systemd/system/payment.service
# systemctl daemon-reload
# systemctl enable payment
# systemctl start payment
