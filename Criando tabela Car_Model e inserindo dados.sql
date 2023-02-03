-- SQLite

-- Criando tabela de Modelos de Carros (Car_Model):
CREATE TABLE CAR_MODEL (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  MODEL_NAME VARCHAR(120)
);

-- Inserindo dados na tabela de Modelos de Carros:
INSERT INTO CAR_MODEL (MODEL_NAME)
            VALUES ('Conversível'),
                   ('Sedã'),
                   ('Hatch'),
                   ('Coupé'),
                   ('Perua'),
                   ('SUV'),
                   ('Picape'),
                   ('Minivan'),
                   ('Utilitário'),
                   ('Buggy');

-- Consultando a tabela de Modelos de Carros:
SELECT * FROM CAR_MODEL;