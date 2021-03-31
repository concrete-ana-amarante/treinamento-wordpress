# Rodar playbook #
ansible-playbook -i hosts provisionar.yml -u ubuntu --private-key treinamento-concrete-key

# Acesso ssh #
ssh -i treinamento-concrete-key ubuntu@ec2-100-25-159-148.compute-1.amazonaws.com