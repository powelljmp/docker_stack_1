FROM       ubuntu:12.04
#comment


# install nginx
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install nginx


# install PHP
RUN apt-get -y install php5-fpm


#RUN /bin/echo 'Hello world'
#CMD "echo" "Hello docker!"


EXPOSE 80
 
CMD service php5-fpm start && nginx