
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

## Importación de la base de datos## Importación de la base de datos

Para importar la base de datos, sigue estos pasos:

1. Asegúrate de tener una base de datos creada en tu servidor de base de datos. Puedes crear una base de datos ejecutando el siguiente comando en tu cliente de base de datos:

    ```sql
    CREATE DATABASE nombre_de_tu_base_de_datos;
    ```

2. Ubica el archivo `teatro.sql` en tu proyecto. Este archivo contiene las instrucciones SQL necesarias para crear y poblar las tablas de la base de datos.

3. Importa el archivo `teatro.sql` en tu base de datos. Puedes hacerlo utilizando la línea de comandos de tu sistema operativo. Ejecuta el siguiente comando, reemplazando `nombre_de_tu_base_de_datos` con el nombre de tu base de datos y `usuario` con tu nombre de usuario de la base de datos:

    ```bash
    mysql -u usuario -p nombre_de_tu_base_de_datos < ruta/al/archivo/teatro.sql
    ```



## Inicio del servidor

Compila el ts con el siguiente comando:

```bash
npm run build
```

Inicia el servidor en modo desarrollo con el siguiente comando:

```bash
npm run dev
```

El servidor estará disponible en [http://localhost:3000](http://localhost:3000).






## Recursos adicionales

- [Node.js Documentation](https://nodejs.org/en/docs/)
- [Express Documentation](https://expressjs.com/)
- [Sequelize Documentation](https://sequelize.org/)
- [MySQL Documentation](https://dev.mysql.com/doc/)


