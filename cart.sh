source commoh.sh

cp cart.service /etc/systemd/system/cart.sevice
nodeJS
rm -rf /app
mkdir /app
curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip
cd /app
unzip /tmp/cart.zip
npm install
systemctl daemon-reload
systemctl enable cart
systemctl start cart
