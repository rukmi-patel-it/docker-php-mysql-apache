# docker-php-mysql-apache
This repository contains docker implementation of php, Mysql, and Apache. Also I have shown how to create virtual host with this example.


To issue SSL certificate, Mac users can use `mkcert`. To install mkcert using brew run below command.


$ brew install mkcert

After successful installation, run below command to issue certificate to domain.



$ mkcert example.org

Generate "example.org.pem" and "example.org-key.pem".


$ mkcert example.com myapp.dev localhost 127.0.0.1 ::1

Generate "example.com+4.pem" and "example.com+4-key.pem".


$ mkcert "*.example.it"

Generate "_wildcard.example.it.pem" and "_wildcard.example.it-key.pem".


Sameway Windos/Linux users can install and use openssl to generate the SSL certificate.
