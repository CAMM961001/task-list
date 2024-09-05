instructions = [
    "SET session_replication_role = 'replica';",
    'DROP TABLE IF EXISTS todo;',
    'DROP TABLE IF EXISTS users;',
    "SET session_replication_role = 'origin';",
    """
    CREATE TABLE users(
        id SERIAL PRIMARY KEY,
        username VARCHAR(50) UNIQUE NOT NULL,
        password VARCHAR(250) NOT NULL
    );""",
    """
    CREATE TABLE todo(
        id SERIAL PRIMARY KEY,
        created_by INT REFERENCES users(id),
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        description TEXT NOT NULL,
        completed BOOLEAN NOT NULL
    );"""
]