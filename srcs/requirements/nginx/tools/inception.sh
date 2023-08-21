#!/bin/bash
openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MR/ST=Khouribga/L=Khouribga/O=1337/OU=1337/CN=souchen.42.fr/UID=souchen"
exec "$@"

# openssl is the command for running OpenSS
# req is the OpenSSL utility for generating a CSR.
# Nous rajouterons ensuite le mot clef -x509 pour préciser le type du certificat.

# Maintenant si nous créons notre certificat, OpenSSL nous demandera un mot de passe, et souvenez vous, si on demande quelque chose à saisir dans le démarrage du container, celui-ci ne va pas pouvoir se build. Il faut donc éviter cela à tout prix !
# Heureusement, OpenSSL a prévu le coup, avec l’option -nodes, notre clef privée se retrouvera simplement sans mot de passe.

