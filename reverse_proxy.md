## How to set up a reverse proxy
- Reverse proxy - a type of proxy server that typically sits behind the firewall in a private network and directs client requests to the appropriate backend server.
open your vm and run `sudo nano /etc/nginx/sites-available/default`
- in the location section, delete the given location and paste ` location / {`
        `proxy_pass http://localhost:8080;`
        `proxy_http_version 1.1;`
        `proxy_set_header Upgrade $http_upgrade;`
        `proxy_set_header Connection 'upgrade';`
        `proxy_set_header Host $host;`
        `proxy_cache_bypass $http_upgrade;`
    `}`
- edit the localhost url to your port number in this case `3000`
- ctrl x to save file
- check the syntax is correct by running `sudo nginx -t`
- restart nginx - `sudo systemctl restart nginx`
- make sure you are in app.js folder `cd app, cd app`
- `npm install`
- `npm start`
- visit website without port `192.168.10.100`
- should be able to now load website without adding port number