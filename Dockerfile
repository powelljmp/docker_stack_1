FROM       ubuntu:12.04
##comment

## update repo
RUN apt-get update
RUN apt-get -y upgrade

## install nginx
RUN apt-get -y install nginx


# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf



EXPOSE 80
 
CMD service php5-fpm start && nginx