# Dockerfile estándar para el scraper de ONPE
FROM python:3.11-slim

# Evitar la generación de archivos .pyc y habilitar el buffer de salida para logs
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Establecer directorio de trabajo
WORKDIR /app

# Instalar dependencias del sistema necesarias para Playwright
RUN apt-get update && apt-get install -y \
    libnss3 \
    libnspr4 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxkbcommon0 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    libgbm1 \
    libasound2 \
    libpangocairo-1.0-0 \
    libpango-1.0-0 \
    libcups2 \
    && rm -rf /var/lib/apt/lists/*

# Copiar archivos de requerimientos e instalar dependencias de Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Instalar los navegadores de Playwright (solo chromium para ahorrar espacio)
RUN playwright install chromium
RUN playwright install-deps chromium

# Copiar el código de la aplicación y el archivo de DNIs
COPY scraper.py .
COPY dnis.xlsx .

# Comando por defecto para ejecutar el análisis
CMD ["python", "scraper.py"]
