CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    persona_id INT NOT NULL,
    rol_id INT NOT NULL,
    CONSTRAINT fk_usuario_persona FOREIGN KEY (persona_id) REFERENCES persona(id),
    CONSTRAINT fk_usuario_rol FOREIGN KEY (rol_id) REFERENCES rol(id)
);