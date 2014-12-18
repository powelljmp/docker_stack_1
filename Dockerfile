FROM       ubuntu:12.04
##comment

##up date repo
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list


## update repo
RUN apt-get update
RUN apt-get -y upgrade


## install nginx
RUN apt-get -y install nginx


# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf


EXPOSE 80
 
CMD service start nginx