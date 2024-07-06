source common.sh

cp cart.service /etc/systemd/system/cart.service
nodeJS
rm -rf /app
mkdir /app
curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip
cd /app
unzip /tmp/cart.zip
npm install
useradd roboshop
systemctl daemon-reload
systemctl enable cart
systemctl start cart
