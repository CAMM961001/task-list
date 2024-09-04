# task-list
Repositorio para proyecto de lista de tareas

# Ejecutar app Flask

Considerando que la aplicación de flask se encuentra dentro de un módulo de
Python, se pueden seguir los siguientes pasos para ejecutar la aplicación sin
necesidad de usar sintaxis `if __name__ == '__main__':`

1. Configurar la aplicación de flask como variable de entorno:
```pwsh
$env:FLASK_APP="<module>:<create_app_function>"
```

2. Configurar variables de base de datos en entorno:
```pwsh
$env:FLASK_DATABASE_HOST="<db_host>"
$env:FLASK_DATABASE_PASSWORD="<db_pass>"
$env:FLASK_DATABASE_USER="<db_user>"
$env:FLASK_DATABASE="<db>"
```

3. Ejecutar la aplicación con el comando:
```pwsh
flask run
```