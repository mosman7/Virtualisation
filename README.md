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
- how to delete a folder `rm -rf filename`
- copy file from 1 location to another
- for admin access `sudo` switych to admin user `sudo su`
- change permission `chmod instruction filename`e.g chmod 700 text.txt
- check permissions `ll`
- task manager `top` or `ps aux`
- close something from task manager - `kill PID` e.g. `kill 7`
- how to delete a folder/hidden folder - `la -a`

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

Automate the process of installing/provisioning nginx 
bash scripting
file.sh
#!/bin/bash - must be first line
create a script
change permissions to make it executable - chmod -x 


### sync folders between OS & VM
    config.vm.synced_folder ".", "/home/vagrant/app"
#                           host path       destination

add this line to vagrantfile
exit from vm
vagrant reload from localhost - upload changes
vagrant up - load back up
ls
folder should now be available

#
- App is on localhost
- before deploying we need to test the environment against the product
- node.js app
- 
install apps inside app folder cd app cd app

