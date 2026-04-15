# Laboratorio 05: Orquestación con Docker Compose

Este repositorio contiene los ejercicios prácticos desarrollados durante el laboratorio de Desarrollo de Soluciones en la Nube, enfocados en la creación, gestión y despliegue de microservicios utilizando Docker Compose.

## 🚀 Objetivos
* Aprender la estructura de un archivo docker-compose.yml.
* Gestionar múltiples servicios (Node.js, Bases de Datos) de forma orquestada.
* Implementar persistencia de datos mediante volúmenes.
* Configurar redes internas y dependencias con healthchecks.
* Manejar variables de entorno con archivos .env.

## 🛠️ Tecnologías utilizadas
* Docker / Docker Desktop
* Docker Compose
* Node.js
* PostgreSQL / MySQL
* Nginx

## 📂 Estructura del Laboratorio

### Ejercicio 1: Servidor Web Estático
Despliegue de un servidor Nginx mapeando un archivo HTML local al contenedor.
- Conceptos: version, services, ports, volumes (bind mounts).

### Ejercicio 2: Comunicación Multi-servicio
Conexión de una aplicación Node.js con una base de datos PostgreSQL.
- Conceptos: Redes bridge automáticas, resolución de nombres por servicio y depends_on.

### Ejercicio 3: Persistencia de Datos
Configuración de un servicio de base de datos MySQL asegurando que la información no se borre al reiniciar el contenedor.
- Conceptos: Volúmenes nombrados (named volumes).

### Ejercicio 4: Configuración Avanzada y Healthchecks
Uso de archivos .env para la seguridad de credenciales y configuración de controles de salud para el despliegue ordenado de servicios.
- Conceptos: env_file, healthcheck, condition: service_healthy.

## 💻 Comandos Útiles

Levantar todos los servicios:
$ docker compose up -d

Ver el estado de los contenedores:
$ docker compose ps

Detener y eliminar contenedores:
$ docker compose down

## 📝 Conclusiones
1. Docker Compose simplifica drásticamente la orquestación de aplicaciones complejas.
2. Los volúmenes son indispensables para la persistencia en servicios de bases de datos.
3. La comunicación interna por nombre de servicio evita el manejo manual de IPs.
4. Los healthchecks garantizan que la app no falle al intentar conectar con una BD que aún no ha iniciado.
5. Los archivos .env permiten separar la configuración del código, mejorando la seguridad.

---
Autor: Frank Sinca
Curso: Desarrollo de Soluciones en la Nube