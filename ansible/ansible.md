## ansible deploy

### configuration

#### file

```bash

# /etc/ansible/hosts

[client]
dog.ap ansible_port=22 ansible_host=172.16.12.11 ansible_user=apple ansible_ssh_private_key_file=/home/apple/.ssh/id_rsa

# end /etc/ansible/hosts

```

```bash

# /home/apple/script/dog.yml

- hosts: client
  user: apple
  gather_facts: false
  tasks:
    - name: Copy a directory into place
      copy:
        src: /home/apple/sync/release/guser  
        dest: /opt/deploy/dev
        mode: "0500"
    - name: Change the working directory before executing the command.
      shell: ./run.sh
      args:
        chdir: /opt/deploy/dev/guser

# end /home/apple/script/dog.yml


```

#### init

```bash

$ ssh-keygen -t rsa
$ ssh-copy-id t_user@192.168.0.226

```

### deploy

```bash

$ ansible-playbook dog.yml

```


### reference

* [Ansible自动化部署服务](https://cloud.tencent.com/developer/article/1777892)
* [Ansible ssh error permission denied (password)](https://bobcares.com/blog/ansible-ssh-error-permission-denied-password/)
* [Missing sudo password](https://www.zhihu.com/question/502931250)

