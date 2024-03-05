FROM php:apache
ARG config_apache="/etc/apache2/mods-enabled/dir.conf"
ARG MARIADB_PASSWORD
ARG DB_HOST
COPY ./app-295devops-travel/ /var/www/html/
RUN docker-php-ext-install mysqli
RUN sed -i 's/""/"'${MARIADB_PASSWORD}'"/g' /var/www/html/config.php && \
sed -i 's/"localhost"/"'${DB_HOST}'"/g' /var/www/html/config.php 
RUN <<EOF > $config_apache
        <IfModule mod_dir.c>
            DirectoryIndex index.php index.cgi index.pl index.html index.xhtml index.htm
        </IfModule>

        # vim: syntax=apache ts=4 sw=4 sts=4 sr noet
EOF