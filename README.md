# Docker Demo App

## Project Description

This is a base project that should be used to complete the configuration according to the problem outline.

This repo does contains a Dockerfile that should be used within the Docker Compose File in order to Build the Docker image everytime the docker-compose command is executed.

## Service Description

This repo consist in a web application (written in javascript) that allows a user to create a simple "To Do" List, and update progress once the task are completed. In a nutshell, the application:

 - Allows to Add New Tasks.
 - Allows to Mark Task as Completed.
 - Allows to Delete Task.

By default, it uses an embedded version of SQLite, but according to the requirements, we do need to use MySQL.

The application is already configured to connect to a MySQL Server if the environment variable `MYSQL_HOST` is provided, if so, you'll need to provide as well the following variables:

 - MYSQL_HOST
 - MYSQL_USER
 - MYSQL_PASSWORD
 - MYSQL_DB

To make this easier when using `docker-compose` you can provide all the environment variables from an `.env` file using the `env_file:` parameter inside the docker-compose file.

When creating the definition for the database service inside the compose file, you need to provide the following environments variables as well:

 - MYSQL_ROOT_PASSWORD
 - MYSQL_DATABASE
 - MYSQL_USER
 - MYSQL_PASSWORD

 Please refer to the documentation for the official [MySQL Docker Image](https://hub.docker.com/_/mysql) for more information about the required environment variables an its purposes.

In order for this to work as expected, you need to configure a `docker-compose` environment where both containers (application and database) can connect to each other and send and receive data. Also, as a requirement, you need to make the Data stored in the database persistent, this means the task that were inserted into the database need to be available even if the docker-compose is restarted.

For this, you can use the project dirs:

- `db-config`
- `db-data`

To store the database configuration and the actual data inside the application database, please add these dirs inside your gitignore file, in order to not upload your database files to your repo.