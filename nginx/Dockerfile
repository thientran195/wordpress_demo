FROM nginx:alpine
COPY ./default.conf /etc/nginx/conf.d/default.conf
ARG CONTAINER_WEB_ROOT
ARG NGINX_SERVER_NAME
ARG PHP_FPM_FASTCGI
RUN sed -i "s/CONTAINER_WEB_ROOT/$(echo ${CONTAINER_WEB_ROOT} | sed 's_/_\\/_g')/g"  /etc/nginx/conf.d/default.conf
RUN sed -i "s/NGINX_SERVER_NAME/${NGINX_SERVER_NAME}/g" /etc/nginx/conf.d/default.conf
RUN sed -i "s/PHP_FPM_FASTCGI/${PHP_FPM_FASTCGI}/g" /etc/nginx/conf.d/default.conf
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
#CMD ["cat", "/etc/nginx/conf.d/default.conf"]
CMD ["nginx", "-g", "daemon off;"]
