# Exo 1




# Utilisation de l'image proftpd 

FROM ubuntu:16.04


# Installation de proftpd

RUN apt update && apt install -y  proftpd adduser passwd


# Création de l'utilisateur dev

RUN useradd -m dev && echo "dev:password12345" | chpasswd


# Création du répertoire pour les fichiers html

RUN mkdir -p /home/dev/html


# Permissions

RUN chown -R dev:dev /home/dev/html


# Config proftpd

COPY proftpd.conf /etc/proftpd/



