ARG PHP_VERSION
FROM php:7.2-cli

# install wget plugin
RUN apt-get update -y
RUN apt-get install wget -y

RUN echo "Install Vim editor"
RUN apt-get install vim -y

RUN echo "Install python"
RUN apt-get install python3 -y && ln -sf /usr/bin/python3 /usr/bin/python

RUN echo -e "${GREEN}Install Git"
RUN apt-get install git-core -y && git --version

RUN echo -e "${GREEN} For case of using window(bull shit) change script EOL to LF"
RUN apt-get install dos2unix -y

RUN echo -e "${GREEN} Install rsync"
RUN apt-get install -y rsync

RUN echo -e  "${GREEN} Install envsubst in gettext package."
RUN apt-get install gettext -y

RUN  echo -e "${LIGHT_GREEN} Install wp-cli.${NC}"
RUN  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN  chmod +x wp-cli.phar
RUN  mv wp-cli.phar /usr/local/bin/wp
RUN  wp --info

# install composer with building-arg version
ENV COMPOSER_VERSION=1.8.0
RUN wget "https://getcomposer.org/download/${COMPOSER_VERSION}/composer.phar" -O /tmp/composer.phar
RUN chmod a+x /tmp/composer.phar
RUN cp /tmp/composer.phar /usr/local/bin/composer.phar
CMD ["echo \"alias composer='/usr/local/bin/composer.phar'\" >> ~/.bashrc"]
CMD ["source ~/.bashrc"]
CMD ["cat ~/.bashrc"]
EXPOSE ${PHP_FPM_PORT}