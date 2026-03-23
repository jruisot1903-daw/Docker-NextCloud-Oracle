# ☁️ Nextcloud Enterprise Stack
### **Docker** × **Oracle XE** asociados mediante **LDAP**

Este repositorio contiene la arquitectura necesaria para desplegar una plataforma de colaboración de alto rendimiento. El diseño está enfocado en entornos corporativos que requieren la robustez de **Oracle Database** y la integración de identidades mediante **LDAP/Active Directory**.

---

## 🚀 Características Principales

* **📦 Despliegue Inmediato:** Arquitectura basada en contenedores (Docker & Compose).
* **🗄️ Persistencia de Datos:** Motor de base de datos **Oracle XE** para una gestión empresarial.
* **👤 Gestión de Usuarios:** Preparado para federación de identidades mediante protocolos de directorio.
* **🛠️ Sin Compilación:** Utiliza imágenes pre-configuradas listas para el despliegue.

---

## 🛠️ Stack Tecnológico

| Componente | Tecnología | Función |
| :--- | :--- | :--- |
| **Aplicación** | `Nextcloud Hub` | Interfaz web y gestión de archivos. |
| **Base de Datos** | `Oracle Database XE` | Motor de persistencia relacional. |
| **Orquestación** | `Docker Compose` | Gestión de servicios y redes aisladas. |
| **Identidad** | `LDAP / AD` | Autenticación centralizada de usuarios. |

---

## 📖 Documentación
Manual para la comfiguración incial : [manual NextCloudxOracle](https://docs.google.com/document/d/1Ee_0mcnFe77Rk0WLifxi_VPN2EtplTLK4JAJJmOmXN8/edit?tab=t.0).

## ⚙️ Puesta en Marcha

Para levantar el ecosistema completo, asegúrate de tener instalado **Docker** y ejecuta el siguiente comando en la raíz del proyecto:

```bash
docker-compose up -d
