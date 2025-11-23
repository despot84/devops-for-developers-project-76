install-role:
	ansible-galaxy install -r requirements.yml

prepare-servers:
	ansible-playbook -i inventory.ini playbook.yml

redmine-deploy:
	ansible-playbook --vault-password-file vault_password.txt -i inventory.ini playbook.yml 

encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml --vault-password-file vault_password.txt
