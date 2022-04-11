FROM nginx:1.21.6
LABEL version="1.0"
RUN apt-get update && apt-get install procps -y
WORKDIR /etc/nginx
RUN mkdir cert
EXPOSE 80 443
RUN mv -f /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf_bak
COPY /etc/nginx/conf/default.conf  /etc/nginx/conf.d/default.conf 
COPY /etc/nginx/cert/shamexln.xyz_bundle.pem  /etc/nginx/cert/shamexln.xyz_bundle.pem
COPY /etc/nginx/cert/shamexln.xyz.key  /etc/nginx/cert/shamexln.xyz.key