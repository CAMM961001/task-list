# task-list
Repositorio para proyecto de lista de tareas

# Ejecutar app Flask

Considerando que la aplicación de flask se encuentra dentro de un módulo de
Python, se pueden seguir los siguientes pasos para ejecutar la aplicación sin
necesidad de usar sintaxis `if __name__ == '__main__':`

1. Configurar la aplicación de flask como variables de entorno:
```pwsh
$env:FLASK_APP="todo:create_app"
$env:FLASK_ENV="development"
$env:FLASK_DEBUG=1
$env:FLASK_DATABASE_HOST="localhost"
$env:FLASK_DATABASE_PASSWORD="taskpassword"
$env:FLASK_DATABASE_USER="miguel"
$env:FLASK_DATABASE="task-list-db"
```

2. Ejecutar la aplicación con el comando:
```pwsh
flask run
```