#!/bin/bash
openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MR/ST=Khouribga/L=Khouribga/O=1337/OU=1337/CN=souchen.42.fr/UID=souchen"


# so now on a create our cle or our certificate SSL  


# openssl is the command for running OpenSSl
# req is the OpenSSL utility for generating a CSR(Certificate signing request).
# Nous rajouterons ensuite le mot clef -x509 pour préciser le type du certificat.

# Maintenant si nous créons notre certificat, OpenSSL nous demandera un mot de passe, et souvenez vous, si on demande quelque chose à saisir dans le démarrage du container, celui-ci ne va pas pouvoir se build. Il faut donc éviter cela à tout prix !
# Heureusement, OpenSSL a prévu le coup, avec l’option -nodes, notre clef privée se retrouvera simplement sans mot de passe.

# FLAGS

# req: creates and processes certificate requests
# -x509: generate a self-signed certificate
# -new: create a new certificate request
# -newkey rsa:2048: create a new private key using RSA and 2048 bit
# -nodes: no passphrase/password (not encrypted)
# -keyout: output the private key to a file
# -out: generate the certificate to a file (_.crt / _.csr)
# -subj: provide the certificate information
# /C: Country Name (2 letter code eg. US)
# /ST: State or Province Name (full name)
# /L: Locality Name (eg, city)
# /O: Organization Name (eg, company)
# /OU: Organizational Unit Name (eg, section)
# /CN: Common Name (eg, your name or your server's hostname)
exec "$@"