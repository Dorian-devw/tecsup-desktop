DAWA Lab 04: Express + EJS Web App

Este repositorio contiene el laboratorio 04 de DAWA, con una aplicación Express que usa EJS para renderizar vistas dinámicas.

Estructura principal:
- `mi-sitio-express/`: aplicación Express con rutas, controladores, vistas y assets estáticos.
- `mi-sitio-express/controllers/`: lógica del servidor, incluyendo el controlador de Dota 2.
- `mi-sitio-express/routes/`: definición de rutas de la aplicación.
- `mi-sitio-express/views/`: plantillas EJS para las páginas.
- `mi-sitio-express/public/`: estilos y archivos estáticos.

Características:
- Formularios de contacto y registro de mensajes en memoria.
- Página de administración que muestra mensajes recibidos.
- Página temática de Dota 2 con formulario de héroes y tabla de héroes.
- Integración con OpenDota para obtener nombres, atributos e iconos de héroes.
- Estilo con Materialize CSS y Google Fonts.

Ejecución:
1. Abrir `mi-sitio-express`
2. Instalar dependencias: `npm install`
3. Iniciar servidor: `node app.js`
4. Abrir `http://localhost:3000`

Notas:
- Los datos de contacto y los héroes agregados se guardan en memoria, por lo que se pierden al reiniciar el servidor.
- El proyecto está diseñado para entrenamiento y demostración de rutas, vistas y consumo de APIs.

