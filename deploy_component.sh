git pull
ansible-playbook -i $1, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role=$2 -e redis_ip=172.31.87.171 -e mongo_ip=172.31.82.151 -e catalogue_ip=172.31.81.21 -e cart_ip=172.31.81.110 -e mysql_ip=172.31.92.157 deploy_components.yml 
