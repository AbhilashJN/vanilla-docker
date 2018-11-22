FROM php:7.2-apache

ENV VANILLA_VERSION 2.6.4
ENV WEB_DOCUMENT_ROOT /app

RUN apt-get update && apt-get install unzip
RUN curl -fsSL -o vanilla.zip \
      "https://github.com/vanilla/vanilla/releases/download/Vanilla_${VANILLA_VERSION}/vanilla-${VANILLA_VERSION}.zip" \
 && rm -rf /app \
 && unzip vanilla.zip -d /usr/src/vanilla-${VANILLA_VERSION} \
 && mv /usr/src/vanilla-${VANILLA_VERSION} /app \
 && chmod +x /app \
 && mv /app/.htaccess.dist /app/.htaccess \
 && rm vanilla.zip
 RUN chown -R "$APPLICATION_USER":"$APPLICATION_GROUP" /app

 VOLUME [ "/app/cache", "/app/conf", "/app/uploads" ]