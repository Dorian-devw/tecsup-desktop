# Laboratorio 03: Desarrollo de Aplicaciones Web Avanzadas

En este laboratorio hemos explorado el mundo de los **Streams** en Node.js, aprendiendo cómo manejar datos de forma eficiente sin saturar la memoria del servidor.

## Contenido del Laboratorio

### 1. Introducción a Streams
- Aprendimos a usar `fs.createReadStream` y `fs.createWriteStream` para mover datos entre archivos.
- Implementamos compresión de archivos en tiempo real usando el módulo `zlib`.
- Experimentamos con el concepto de **Backpressure** para controlar manualmente la velocidad entre la lectura y la escritura.

### 2. Actividad 1: Transformación de Texto
- Creamos un **Transform Stream** personalizado.
- El objetivo fue leer un archivo de texto (`texto.txt`) y convertirlo completamente a mayúsculas conforme se procesaba, guardando el resultado en `texto_mayusculas.txt`.

### 3. Actividad 2: Servidor de Reportes Excel
- Instalamos la librería `exceljs`.
- Configuramos un servidor HTTP nativo.
- Creamos una ruta `/reporte` que genera un archivo Excel en memoria y lo envía al navegador mediante streaming.
- Aprendimos a configurar cabeceras (`headers`) para que el navegador reconozca el archivo como una descarga.

## Cómo ejecutar las actividades

- **Actividad 1**: `node actividad1.js`
- **Actividad 2**: 
  1. Entrar a la carpeta: `cd actividad-2`
  2. Instalar dependencias: `npm install`
  3. Ejecutar: `node server.js`
  4. Visitar: `http://localhost:3000/reporte`
