server {
    listen 80;
    listen [::]:80;

    server_name senatmed.ru www.senatmed.ru;

    location /api {
        proxy_pass http://localhost:5000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }

    location / {
        root /var/www/dist;
        index index.html index.htm index.nginx-debian.html;
        try_files $uri $uri/ /index.html;
    }
}