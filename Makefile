install-role:
	ansible-galaxy install -r requirements.yml

prepare-servers:
	ansible-playbook -i inventory.ini playbook.yml

redmine-deploy:
	ansible-playbook --vault-password-file .ansible_vault playbook.yml -i inventory.ini -t deploy

setup-datadog:
	ansible-playbook datadog_playbook.yml --vault-password-file .ansible_vault

encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml --vault-password-file vault_password.txt
