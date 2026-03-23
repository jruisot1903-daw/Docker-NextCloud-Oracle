☁️ Nextcloud Enterprise Stack (Docker + Oracle)
Este repositorio contiene la infraestructura necesaria para desplegar una plataforma de colaboración Nextcloud de alto rendimiento, diseñada para entornos profesionales que requieren integración con bases de datos Oracle y sistemas de identidad LDAP.

🌟 Características principales
Persistencia Robusta: Utiliza Oracle Database para la gestión de datos.

Identidad Centralizada: Preparado para conectar con Directorios Activos corporativos.

Arquitectura Modular: Despliegue 100% basado en contenedores Docker para facilitar la portabilidad.

Listo para el usuario: Interfaz web intuitiva para gestión de archivos, contactos y calendarios.

🚀 Cómo empezar
Para poner en marcha el sistema, solo necesitas ejecutar un comando desde la raíz del proyecto:

Bash

docker-compose up -d

📦 Contenido del Repositorio
docker-compose.yml: Orquestación completa de los servicios (Aplicación + Base de Datos).

Configuraciones: Archivos necesarios para la comunicación entre Nextcloud y Oracle.

📖 Documentación adicional
Para detalles técnicos profundos, pasos de configuración de red específicos o resolución de errores de protocolos (como el error de enlazado LDAP), consulta el Manual de Proyecto adjunto en la documentación oficial.
[Manual](https://docs.google.com/document/d/1Ee_0mcnFe77Rk0WLifxi_VPN2EtplTLK4JAJJmOmXN8/edit?tab=t.0).

✒️ Autor
Javier Ruiz Soto.
