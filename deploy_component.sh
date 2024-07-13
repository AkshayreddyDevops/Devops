git pull
ansible-playbook -i $1, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role=$2 -e ip=172.31.81.21 deploy_components.yml 
