### VM created and running

Current machine states:

default                   running (virtualbox)

The VM is running. To stop this VM, you can run `vagrant halt` to
shut it down forcefully, or you can run `vagrant suspend` to simply
suspend the virtual machine. In either case, to restart it again,
simply run `vagrant up`.

# Virtualisation
### Vagrant notes

- vagrant ssh to get into vm
- read a folder - cat filename
- check internet conectivity  `sudo apt-get update`
- Run upgrade `sudo apt-get upgrade -y`
- where am i `pwd`
- `whoami`-folder name, `uname`-gives OS used in vm or `uname -a` - version of OS
- how to create a file in linux `touch 'filename'` & `nano filename`
- check files available in current location - `ls`
- navigate to folder `cd folder name`
- how to navigate out of folder `cd ..` or `cd`
- how to delets a folder `rm -rf filename`
- copy file from 1 location to another
- for admin access `sudo` switych to admin user `sudo su`
- change permission `chmod instruction filename`e.g chmod 700 text.txt
- task manager `top` or `ps aux`
- close something from task manager - `kill PID` e.g. `kill 7`
- how to delete a folder/hidden folder - `la -a`

### Tast
- print first 3 lines from the test.txt - head -3 text.txt
- print last 10 lines from the test.txt - tail -10 text.txt
- print last  lines from the test.txt - tail -1 text.txt

- Research how to use `| pipe` , `grep` and `sort` - 
- pipe - sends the output of one command to another
- grep -  It lets you find a word by searching through all the texts in a specific file.
- sort -  sorts the contents of a text file, line by line
- ps-aux sort list by name - ps aux --sort user


- install `nginx` in our vm - `sudo apt-get install nginx -y`
- create a `private-network` between localhost&vm
- how to check a tool/software in linux `sudo systemctl status nginx`
- ctrl c to exit
- `sudo systemctl stop nginx` stops 
- `sudo systemctl start nginx` starts process

- `vagrant destroy` then `vagrant status`

### Steps to creating a virtual machine (nginx)
- vagrant up - starts vm
- vagrant status - checks whether vm is running or not
- exit - leaves vm environment
- vagrant reload  - runs vm from localhost
- vagrant ssh - 
- sudo apt-get install nginx -y
- sudo systemctl status nginx
- ctrl c
- sudo systemctl stop nginx
- sudo systemctl start nginx

## Task
#### What is virtualisation & benefits of it?
- Virtualization relies on software to simulate hardware functionality and create a virtual computer system. This enables IT organizations to run more than one virtual system – and multiple operating systems and applications – on a single server. The resulting benefits include economies of scale and greater efficiency.

[]! "C:\Users\moham\Downloads\MicrosoftTeams-image (1).png"

#### What is dev env?
- A workspace for developers to make changes without breaking anything in a live environment

#### What is vagrant?
- Tool for building and managing virtual machine environments in a single workflow. 
- Vagrant lowers development environment setup time

#### What is a virtual box?
- Open-source software for virtualizing the x86 computing architecture.
- Acts as a hypervisor, creates a VM (virtual machine) where the user can run another OS (operating system).

#### Benefits of Virtualisation
- Reduces your IT expenses
- Reduce downtime and enhance resiliency in disaster recovery situations
- Increase efficiency and productivity
- More security
- Flexible