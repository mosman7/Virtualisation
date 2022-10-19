#### Automating a script
- create a file `nano file.sh`
- #!/bin/bash - must be first line
- create a script and add to file
- change permissions to make it executable - `chmod instruction filename`

#### How to sync folders from localhost to VM
- unzip folder in same location as vagrantfile
- add code to vagrantfile on vscode
- `config.vm.synced_folder ". or host path", "destination path"
- e.g. `config.vm.synced_folder ".", "/home/vagrant/app"`
-  exit from vm
- `vagrant reload` in localhost - shuts down and saves changed
- `vagrant up` - boots back up vm
- `vagrant ssh` 
- `ls` to see if folders have synced
- folders should now appear on vm

#### How to deploy apps
- cd into spec folder in environment
- run `gem install bundler` on localhost
- `bundle` - now bundle has been installed
- run `rake spec` to test app
- find out what tests have failed and install what is required

#### Install node.js
- on vm run below
- sudo apt-get install python-software-properties
- curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
- sudo apt-get install nodejs -y

#### Install PM2
- still in vm `sudo npm install pm2 -g`
- cd into app.js folder inside app `cd app, cd app`
- run `npm install`
- run `npm start`
- load `192.168.10.100:3000 on browser`
