# ☁️ Nextcloud Stack
### **Docker** × **Oracle XE** asociados mediante **LDAP**

Este repositorio contiene la arquitectura necesaria para desplegar una plataforma de colaboración de alto rendimiento. El diseño está enfocado en entornos corporativos que requieren la robustez de **Oracle Database** y la integración de identidades mediante **LDAP/Active Directory**.

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
Manual para la comfiguración incial : [manual NextCloudxOracle](https://docs.google.com/document/d/14G4M4l18rx6COtj7cJIxt9CZqIYJiJX08Hg_ml4WeZQ/edit?usp=sharing).

## ⚙️ Puesta en Marcha

Para levantar el ecosistema completo, asegúrate de tener instalado **Docker** y ejecuta el siguiente comando en la raíz del proyecto:

```bash
docker-compose up -d
