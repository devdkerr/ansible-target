# Ansible Target

Docker container to be managed with ansible for production or testing of Ansible modules, playbooks, or roles.

## via SSH Connection

To start a container to be managed via the default Ansible ssh connection type, executed the following:

```shell
docker run -d -p 2222:22 devdkerr/ansible-target:ssh
```

and configure your ansible inventory as follows:

```ini
target ansible_connection=ssh ansible_host=127.0.0.1 ansible_port=2222 ansible_user=root ansible_ssh_pass=root
```

## via Docker Connection

To start a container to be managed via the Ansible docker connection plugin, execute the following:

```shell
docker run -d --name target devdkerr/ansible-target:docker
```

and configure your ansible inventory as follows:

```ini
target ansible_connection=docker ansible_host=target
```
