FROM ubuntu
RUN apt update -y
RUN apt install -y nginx
RUN apt install -y git
EXPOSE 80
# Manage website_docker
RUN git clone https://github.com/Stee-maker/StephaneMoneme_2_09022021.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
