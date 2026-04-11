# 🧪 Laboratorio 04: Dockerización y Automatización de Soluciones

Este repositorio contiene las actividades y soluciones del **Laboratorio 04** del curso **Desarrollo de Soluciones en la Nube**. El enfoque principal es la containerización de aplicaciones utilizando **Docker**, optimización de imágenes y automatización de procesos mediante Web Scraping.

---

## 📂 Estructura del Repositorio

El laboratorio está dividido en dos secciones principales:

### 1. 🛠️ Actividades de Laboratorio (`/actvidades laboratorio`)
Ejercicios base para comprender los fundamentos de Docker y la optimización de imágenes.
- **`app.py`**: Aplicación web minimalista usando Flask que muestra el hostname del contenedor.
- **Dockerfiles**:
  - `dockerfile`: Versión inicial (estándar).
  - `Dockerfile.optimizado`: Uso de imágenes base ligeras (Python-Alpine).
  - `Dockerfile.multistage`: Implementación de construcción en múltiples etapas para reducir el tamaño final y mejorar la seguridad.

### 2. 🗳️ Mejora Caso 2: Automatización ONPE (`/mejora-caso2`)
Un proyecto avanzado que automatiza la consulta de datos electorales del portal de la ONPE.
- **`scraper.py`**: Script de Python que utiliza **Playwright** para navegar y extraer información (miembro de mesa, local de votación, etc.).
- **Procesamiento de Datos**: Lee una lista de DNIs desde `dnis.xlsx` y exporta los resultados a `resultados_analisis.xlsx`.
- **Dockerización Avanzada**: Incluye variantes optimizadas para entornos de scraping que requieren dependencias de navegador (Chromium).

---

## 🚀 Cómo Ejecutar el Proyecto Principal (Caso 2)

Para facilitar la revisión por parte del docente, se han preparado varias formas de ejecución:

### A. Ejecución Directa (Docker Hub)
No requiere descargar el código ni tener Python instalado. Solo necesita Docker:

```bash
docker run --rm -v ${PWD}:/app/output dorian778/onpe-scraper:latest
```
*Los resultados se guardarán en su directorio actual en la carpeta `output`.*

### B. Construcción Local (Multistage)
Si desea compilar la imagen desde cero utilizando la versión más eficiente:

```bash
cd mejora-caso2
docker build -t lab04-onpe -f Dockerfile.multistage .
docker run --rm -v ${PWD}:/app/output lab04-onpe
```

---

## 🛠️ Tecnologías Utilizadas

- ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
- ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
- ![Flask](https://img.shields.io/badge/flask-%23000.svg?style=for-the-badge&logo=flask&logoColor=white)
- ![Playwright](https://img.shields.io/badge/playwright-%232EAD33.svg?style=for-the-badge&logo=playwright&logoColor=white)

---

## 👤 Información del Estudiante

- **Curso:** Desarrollo de Soluciones en la Nube
- **Laboratorio:** 04
- **Alumno:** Frank Sinca Orozco
- **Docker Hub:** [dorian778](https://hub.docker.com/u/dorian778)

---

## 📝 Conclusiones

1. **Docker nos facilita la vida**: Con este laboratorio me di cuenta de lo útil que es Docker para no estar sufriendo con las instalaciones de librerías o versiones de Python. Una vez que tienes la imagen lista, el proyecto corre igual en cualquier lado sin errores de "en mi compu sí funcionaba".
2. **Automatizar ahorra mucho tiempo**: Crear el script para consultar DNIs automáticamente me enseñó que tareas que antes nos tomaban horas haciendo clic uno por uno en la web, ahora se pueden resolver en minutos. Además, el manejo de errores ayuda mucho cuando la página de la ONPE se pone lenta o se cae.
