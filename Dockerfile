FROM ubuntu
MAINTAINER rajhry1986@gmail.com
RUN apt-get update
RUN apt-get install -y apache2 iproute2 elinks
RUN echo "Page Created by Container: webcontainer" > /var/www/html/index.html
RUN /etc/init.d/apache2 start
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]
EXPOSE 80/tcp
