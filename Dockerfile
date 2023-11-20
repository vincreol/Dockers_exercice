# Exo 1


# Utilisation de l'image proftpd 

FROM ubuntu:20.04


# Installation de proftpd

RUN apt update && apt install -y  proftpd

# Création de l'utilisateur dev

RUN useradd -m dev

COPY mdp /

RUN passwd dev < mdp


# Création du répertoire pour les fichiers html

RUN mkdir -p /home/dev/html

                               
# Permissions

RUN chown -R dev:dev /home/dev/html
      

# Config proftpd

COPY proftpd.conf /etc/proftpd/


# PORT

EXPOSE 21


# Execution proftpd

CMD ["proftpd", "--nodaemon"]









