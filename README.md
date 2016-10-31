# docker-apache2-php5-redis-nodejs-pm2
Docker image for apache2, php5, mysql-client, redis, nodejs and pm2

1. Clone repo
2. Build docker image:  
  **docker build -t apacheImg .**
3. Use image:  
  **docker run --name apacheContainer -p 80:80 -d -v /hostHtmlPath:/var/www/html apacheImg**

