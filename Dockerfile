FROM nginx 

RUN apt update
RUN apt install openssl

RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/key.pem -out /etc/ssl/cert.pem -sha256 -days 3650 -nodes -subj "/C=XX/ST=StateName/L=CityName/O=CompanyName/OU=CompanySectionName/CN=CommonNameOrHostname"

COPY https.conf /etc/nginx/conf.d/

VOLUME ["/var/www/html"]

CMD ["nginx", "-g", "daemon off;"]

