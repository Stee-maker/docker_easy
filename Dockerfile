FROM ubuntu
MAINTAINER stee (stephaneamoussou)
RUN apt update -y
RUN DEBIAN_FRONTEND=noninteractive apt install -y nginx git
EXPOSE 80
# Manage website_docker
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/Stee-maker/StephaneMoneme_2_09022021.git/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
