#!/bin/bash
touch /var/www/wordpress/wp-config.php;
sed -i "s/votre_nom_de_bdd/${SQL_DATABASE}/g" "/var/www/wordpress/wp-config-sample.php"
sed -i "s/votre_utilisateur_de_dbb/${SQL_USER}/g" "/var/www/wordpress/wp-config-sample.php"
sed -i "s/votre_mdp_de_bdd/${SQL_PASSWORD}/g" "/var/www/wordpress/wp-config-sample.php"
sed -i "s/localhost/${db_host}/g" "/var/www/wordpress/wp-config-sample.php"
cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php;
exec "$@"