### Set up 2 VM's
- input command for vm in vagrantfile
- update to `ubuntu/bionic64`
- make sure location for provision.sh is correct folder. app/environment
- boot up vms `vagrant up app` `vagrant up db`

#### In db vm
- update/ upgrade `sudo apt-get update -y` `sudo apt-get upgrade -y` 
- to install mongodb run the following commands
- `sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927`
- `echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list`
- update/upgrade
- `sudo apt-get install mongodb-org=3.2.20 -y`
- `sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20`

- if mongo is is set up correctly these will be successful
- `sudo systemctl restart mongod`
- `sudo systemctl enable mongod`

Now change the mongod.conf file
- cd into etc folder `cd /etc`
- `sudo nano mongod.conf`
- edit the bindIp as below and ensure port is 27017
-` port: 27017`. `bindIp: 0.0.0.0`
- restart mongodb `sudo systemctl restart mongodb`
- enable mongodb `sudo systemctl enable mongodb`

#### open app machine
- in app folder `cd app, cd app`
- create env var called cb_host
- `export DB_HOST=mongodb://192.168.10.150:27017/posts`
- printenv DB_HOST to see if this has saved
- `npm start`
- if npm start returns an error `ps aux` and kill running npm
- `kill -9 xxxx`
- `npm start`
- launch 192.168.10.100 and app should be working showing posts page
- to get data run `node seeds/seed.js`
- `npm start`
- app now working fine
- when exiting if you get the error `There are stopped jobs.` type in `jobs` which will stop it



#### In app vm
- 