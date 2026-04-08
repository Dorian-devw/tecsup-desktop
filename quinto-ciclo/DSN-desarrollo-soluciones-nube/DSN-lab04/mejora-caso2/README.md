# 🗳️ Automatización de Consulta Electoral - ONPE (Caso 2)

Este proyecto automatiza la verificación de miembros de mesa y locales de votación utilizando **Python**, **Playwright** y **Docker**. Está diseñado para procesar una lista de DNIs desde un archivo Excel y generar un reporte detallado.

## 🚀 Guía de Ejecución Rápida

Para el profesor: No es necesario instalar Python ni dependencias locales. Todo el entorno está encapsulado en un contenedor Docker.

### Opción A: Ejecutar desde Docker Hub (Recomendado)

Si desea probar la imagen ya publicada por el alumno:

```bash
# Descargar y ejecutar automáticamente
docker run --rm -v ${PWD}:/app/output dorian778/onpe-scraper:latest
```
*Nota: El volumen `-v` permitirá que el archivo `resultados_analisis.xlsx` generado se guarde directamente en su carpeta actual en una subcarpeta llamada `output`.*

### Opción B: Construcción y Ejecución Local

Si desea construir la imagen desde el código fuente incluido:

1. **Construir la imagen (Version Multistage)**:
   ```bash
   docker build -t onpe-scraper-multistage -f Dockerfile.multistage .
   ```

2. **Ejecutar el contenedor**:
   ```bash
   docker run --rm onpe-scraper-multistage
   ```

---

## 🛠️ Estructura del Proyecto

El proyecto incluye tres variantes de Dockerfile para demostrar diferentes niveles de optimización:

1.  **`Dockerfile`**: Versión estándar basada en Debian/Slim.
2.  **`Dockerfile.optimizado`**: Versión basada en **Alpine Linux**, minimizando el peso de la imagen al usar el Chromium del sistema.
3.  **`Dockerfile.multistage`**: Versión con construcción en dos etapas, separando el entorno de compilación del de ejecución para máxima eficiencia y seguridad.

## 📁 Archivos de Interés
- `scraper.py`: Corazón de la lógica de automatización (Scraping).
- `dnis.xlsx`: Archivo de entrada con los DNIs a consultar.
- `resultados_analisis.xlsx`: Reporte generado con Nombre, Estado, Ubicación y Local de Votación.

---

## ⚠️ Nota Importante sobre el Portal de ONPE
Actualmente, el portal de la ONPE (`consultaelectoral.onpe.gob.pe`) está presentando alta saturación e **inestabilidad técnica (Errores 500)** debido a la proximidad de las elecciones. 

Si el script devuelve "Timeout" o "Error de servidor", es debido a que el servicio externo de la ONPE está caído momentáneamente. El código está diseñado para reintentar y manejar estas excepciones de forma robusta.

---
**Alumno:** Frank Sinca Orozco
**Usuario Docker Hub:** dorian778
