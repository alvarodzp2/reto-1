# Imagen base de Python
FROM python:3.12-slim

# Establecer directorio de trabajo al nivel donde está user_Service
WORKDIR /usr/src

# Copiar archivos de requerimientos
COPY requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el contenido del proyecto
COPY . .

# Cambiar el WORKDIR a la carpeta del servicio
WORKDIR /usr/src/user_Service

# Exponer el puerto de FastAPI
EXPOSE 8000

# Comando para ejecutar la app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
