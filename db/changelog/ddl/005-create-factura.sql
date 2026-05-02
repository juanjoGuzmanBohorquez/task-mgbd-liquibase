CREATE TABLE factura (
    id SERIAL PRIMARY KEY,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    persona_id INT NOT NULL,
    CONSTRAINT fk_factura_persona FOREIGN KEY (persona_id) REFERENCES persona(id)
);