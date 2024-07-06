source common.sh

cp mongo.repo /ect/yum/mongo.repo
cp cataloug.service /etc/systemd/system/cataloug

nodeJS

useradd roboshop

rm -rf /app
mkdir /app

curl -L -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip
cd /app
unzip/tmp/catalogue.zip

cd /app
npm 
systemctl daemon-reload
systemctl enable cataloug
systemctl start cataloug

dnf install mongodb-mongosh -y
#mongosh --host <mongoDB> </app/db/master-data.js