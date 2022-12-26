FROM php:5.6-apache
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
RUN docker-php-ext-install pdo pdo_mysql mysqli mysql

COPY ./conf/apache2/ssl/dev.project1.loc+3-key.pem /etc/apache2/ssl/dev.project1.loc+3-key.pem
COPY ./conf/apache2/ssl/dev.project1.loc+3.pem /etc/apache2/ssl/dev.project1.loc+3.pem

COPY ./conf/apache2/sites-available/dev.project1.loc.conf /etc/apache2/sites-available/dev.project1.loc.conf
COPY ./conf/apache2/sites-available/dev.project1.loc-ssl.conf /etc/apache2/sites-available/dev.project1.loc-ssl.conf

CMD apachectl -D FOREGROUND

RUN ln -s /etc/apache2/mods-available/ssl.load  /etc/apache2/mods-enabled/ssl.load
RUN a2enmod rewrite
RUN a2enmod mime
RUN a2ensite dev.project1.loc
RUN a2ensite dev.project1.loc-ssl
RUN service apache2 restart