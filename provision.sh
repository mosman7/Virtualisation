# THIS SYNTAX MUST ALWAYS BE THE FIRST LINE OF THE FILE - lets machine know this is a bash script
#!/bin/bash

# 1. First we check for updates and upgrades after launching
sudo apt-get update -y
sudo apt-get upgrade -y

# 2. Then we install the web server nginx
sudo apt-get install nginx -y
sudo systemctl start nginx #- restart?
sudo systemctl enable nginx

# 3. Now we need to install python
sudo apt-get install python -y
sudo apt-get install python-software-properties

# 4. Next install Nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# 5. Also install pm2
sudo npm install pm2 -g

# 6. Make sure you are in the right location - cd into correct folder
cd app
cd app 

# 7. Now run apn
sudo npm install