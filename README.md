
# Inprocode Backend

Este es el backend del proyecto **Inprocode**, desarrollado con **Node.js**, **Express**, **MySQL** y **Sequelize**. Este backend sirve como API para la gestión de datos necesarios para los módulos del frontend.

## Requisitos previos

Antes de iniciar, asegúrate de tener instalados los siguientes programas y herramientas:

- **Node.js** (versión recomendada: 18+)
- **NPM** (instalado con Node.js)
- **XAMPP** o cualquier otro servidor que permita gestionar bases de datos MySQL.

## Clonación del repositorio

Clona el repositorio con el siguiente comando:

```bash
git clone https://github.com/mcallejo-10/S8-Inprocode-Backend.git
cd S8-Inprocode-Backend
```

## Instalación de dependencias

Ejecuta el siguiente comando para instalar las dependencias del proyecto:

```bash
npm install
```

## Configuración de la base de datos

1. Inicia tu servidor MySQL con **XAMPP** u otra herramienta similar. 
2. Crea una base de datos llamada `inprocode` (o modifica el nombre en el archivo de configuración si usas otro nombre).  
3. Configura las credenciales de acceso a la base de datos en el archivo `.env` ubicado en el directorio raíz. El contenido del archivo debe tener el siguiente formato:

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=tu_contraseña
DB_NAME=inprocode
DB_DIALECT=mysql
PORT=3000
```

4. Ejecuta las migraciones para generar las tablas en la base de datos. Usa este comando:

```bash
npx sequelize db:migrate
```

## Inicio del servidor

Inicia el servidor en modo desarrollo con el siguiente comando:

```bash
npm run dev
```

El servidor estará disponible en [http://localhost:3000](http://localhost:3000).

## Estructura del proyecto

```plaintext
├── config/           # Configuración de Sequelize
├── controllers/      # Lógica de negocio de los endpoints
├── models/           # Definición de los modelos de Sequelize
├── routes/           # Rutas de la API
├── migrations/       # Migraciones de la base de datos
├── .env              # Variables de entorno
├── package.json      # Dependencias del proyecto
└── server.js         # Punto de entrada del servidor
```

## Rutas de la API

Aquí tienes una lista de las rutas principales del backend:

### Usuarios
- **GET** `/users` – Obtiene todos los usuarios.
- **POST** `/users` – Crea un nuevo usuario.
- **PUT** `/users/:id` – Actualiza un usuario existente.
- **DELETE** `/users/:id` – Elimina un usuario.

### Eventos
- **GET** `/events` – Obtiene todos los eventos.
- **POST** `/events` – Crea un nuevo evento.
- **PUT** `/events/:id` – Actualiza un evento existente.
- **DELETE** `/events/:id` – Elimina un evento.

## Desarrollo y contribución

Si deseas contribuir al proyecto, sigue estos pasos:

1. Crea una nueva rama para tus cambios:
   ```bash
   git checkout -b nombre-de-tu-rama
   ```
2. Realiza tus modificaciones y verifica que todo funcione correctamente.
3. Haz un commit de tus cambios:
   ```bash
   git commit -m "Descripción de los cambios"
   ```
4. Sube tus cambios al repositorio:
   ```bash
   git push origin nombre-de-tu-rama
   ```
5. Crea un pull request desde GitHub.

## Recursos adicionales

- [Node.js Documentation](https://nodejs.org/en/docs/)
- [Express Documentation](https://expressjs.com/)
- [Sequelize Documentation](https://sequelize.org/)
- [MySQL Documentation](https://dev.mysql.com/doc/)

---

¡Gracias por contribuir al proyecto **Inprocode**!
