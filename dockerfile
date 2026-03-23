FROM  nextcloud:30.0.5

# 1. Dependencias esenciales
RUN apt-get update && apt-get install -y \
    libaio1 \
    libaio-dev \
    unzip \
    libldap2-dev \
    && rm -rf /var/lib/apt/lists/*

# 2. Configurar e instalar LDAP
RUN docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ && \
    docker-php-ext-install ldap

# 3. Oracle Instant Client (Tus archivos locales)
COPY instantclient-basic-*.zip /tmp/basic.zip
COPY instantclient-sdk-*.zip /tmp/sdk.zip

RUN unzip -o /tmp/basic.zip -d /usr/local/ && \
    unzip -o /tmp/sdk.zip -d /usr/local/ && \
    ln -s /usr/local/instantclient_21_21 /usr/local/instantclient && \
    rm /tmp/*.zip

# 4. Configuración de LIBRERÍAS (Vital para que PHP "vea" Oracle)
ENV LD_LIBRARY_PATH=/usr/local/instantclient
ENV ORACLE_HOME=/usr/local/instantclient

# Registrar librerías en el sistema operativo
RUN echo "/usr/local/instantclient" > /etc/ld.so.conf.d/oracle-instantclient.conf && \
    ldconfig

# Inyectar variables en Apache
RUN echo "export LD_LIBRARY_PATH=/usr/local/instantclient" >> /etc/apache2/envvars && \
    echo "export ORACLE_HOME=/usr/local/instantclient" >> /etc/apache2/envvars

# 5. Instalar OCI8 (Versión específica para PHP 8.2)
RUN echo "instantclient,/usr/local/instantclient" | pecl install oci8-3.3.0 && \
    docker-php-ext-enable oci8

# 6. Permisos finales
RUN chown -R www-data:www-data /var/www/html