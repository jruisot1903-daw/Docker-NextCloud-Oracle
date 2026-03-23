# Nextcloud Corporativo con Persistencia en Oracle
Este proyecto despliega Nextcloud usando Docker, configurado para conectar con una base de datos Oracle y autenticación LDAP.

## 🐳 Despliegue rápido
docker-compose up -d --build

## ⚙️ Configuración LDAP
Para la conexión con el servidor de identidad, se han validado los siguientes parámetros:

Host: servidor.dominio.es (Puerto 389)

Base DN: DC=dominio,DC=es

Filtro de usuario: (objectclass=user)

Nota técnica: Se ha identificado que el servidor de identidad puede retornar un Error 531. Esto indica una restricción de acceso por IP en el Directorio Activo, ajena a la configuración de la aplicación.

## 📁 Persistencia
DB: Oracle XE (Contenedor persistente mediante volúmenes).

Archivos: Almacenados en el volumen nextcloud_data.
