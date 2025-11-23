### Hexlet tests and linter status:
[![Actions Status](https://github.com/despot84/devops-for-developers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/despot84/devops-for-developers-project-76/actions)

![CI](https://github.com/despot84/devops-for-developers-project-76/actions/workflows/push.yml/badge.svg)

### Requirements

* Ansible
* Make

### Как запустить приложение

**Клонируйте репозиторий**

```bash
git clone git@github.com:despot84/devops-for-developers-project-76/.git
```

Создать файл vault_password.txt
```
echo "ваш_пароль" > vault_password.txt
```

Создать файл group_vars/webservers/vault.yml
```
ansible-vault create group_vars/webservers/vault.yml --vault-password-file vault_password.txt
```
Вставить содержимое:
```
apps_localhost: localhost
vault_datadog_api_key: your_datadog_api_key

vault_some_db_postgres: you_postgress_host
vault_some_db_database: db
vault_some_db_username: postgres
vault_some_db_password: postgres
vault_some_db_port: 5432
```
Нажмите Esc, чтобы выйти из режима редактирования.
Введите :wq и нажмите Enter для сохранения и выхода.

**Выполнить**

```bash
make install-role

make redmine-deploy
```