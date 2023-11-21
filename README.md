# Dockers_exercice

créer l'image: 

sudo docker build -t nginx .



lancer le docker avec volume partagé : 

sudo docker run -v /var/www/html:/var/www/html -d --name my_nginx nginx


vérification : 

sudo docker ps


obtenir l'adresse IP du docker :

sudo docker inspect my_nginx 
