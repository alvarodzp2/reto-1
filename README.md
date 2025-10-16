# reto-1

User Service

Servicio backend desarrollado con FastAPI y MongoDB, desplegado en Railway.
Permite crear y gestionar usuarios y buscarlos solo por id.


Estructura del proyecto

user_service/
│
├── main.py
├── models/
│   └── user.py
├── routes/
│   └── user_routes.py
├── config/
│   └── database.py
├── Dockerfile
├── requirements.txt
├── .env.example
└── README.md

---

Configuración de la base de datos

1. Crear una base de datos en MongoDB Atlas o en Railway MongoDB.
2. Copiar la URI de conexión y colocarla en el archivo .env:

MONGODB_URI=mongodb+srv://usuario:password@cluster.mongodb.net/
DB_NAME=user_db

3. Guardar el archivo .env en el nivel raíz del proyecto (junto al Dockerfile).

---

Ejecución en local

1. Clonar el repositorio:

git clone [https://github.com/tu_usuario/tu_repositorio.git](https://github.com/tu_usuario/tu_repositorio.git)
cd user_service

2. Crear un entorno virtual e instalar dependencias:

python -m venv venv
source venv/bin/activate     # Linux/Mac
venv\Scripts\activate        # Windows
pip install -r requirements.txt

3. Ejecutar el servicio:

uvicorn main:app --reload

Por defecto se ejecutará en:

[http://127.0.0.1:8000](http://127.0.0.1:8000)

---

Ejecución con Docker

1. Construir la imagen:

docker build -t user_service .

2. Ejecutar el contenedor:

docker run -d -p 8000:8000 --env-file .env user_service

3. Acceder a:

[http://localhost:8000/docs](http://localhost:8000/docs)

---

Backend desplegado

Tu backend está disponible en:

[https://reto-1-production.up.railway.app/](https://reto-1-production.up.railway.app/)

Documentación interactiva (Swagger UI):

[https://reto-1-production.up.railway.app/docs](https://reto-1-production.up.railway.app/docs)

---

Ejemplo JSON para crear un usuario

{
"name": "Daniel Segovia",
"email": "[daniel@puce.edu.ec](mailto:daniel@puce.edu.ec)",
"password": "123456"
}

---

Ejemplo de prueba con curl

Crear un usuario

curl -X POST "[https://reto-1-production.up.railway.app/users](https://reto-1-production.up.railway.app/users)" 
-H "Content-Type: application/json" 
-d '{
"name": "Daniel Segovia",
"email": "[daniel@puce.edu.ec](mailto:daniel@puce.edu.ec)",
"password": "123456"
}'

Obtener un usuario por id

curl -X GET "[https://reto-1-production.up.railway.app/users/](https://reto-1-production.up.railway.app/users/)<user_id>"

---

Ejemplo de prueba en Postman

1. Crear un nuevo request:

   * Método: GET
   * URL: [https://reto-1-production.up.railway.app/users/](https://reto-1-production.up.railway.app/users/)<user_id>
   * Presionar Send

2. Reemplazar <user_id> por el id del usuario que se quiere consultar.

alvaro zumba
16/10/2025
