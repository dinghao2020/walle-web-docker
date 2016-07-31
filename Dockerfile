FROM codemix/yii2-base:2.0.8-php-fpm

RUN apt-get update && apt-get install -y gettext-base libmcrypt-dev libicu-dev \
      zlib1g-dev unzip git subversion ssh ansible && rm -rf /var/lib/apt/lists/*

COPY ./ /var/www/html

RUN mkdir -p /data/www/deploy && chown -R www-data:www-data /data

WORKDIR /var/www/html
#RUN curl -sS https://getcomposer.org/installer | php \
#      && mv composer.phar /usr/local/bin/composer \
#      && chmod +x /usr/local/bin/composer
#RUN composer install --prefer-dist --no-dev --optimize-autoloader -vvvv
RUN chown -R www-data:www-data /var/www/html

VOLUME ["/var/www"]
