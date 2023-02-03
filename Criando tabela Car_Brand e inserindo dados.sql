-- SQLite

-- Criando tabela de Marcas de Carros (CAR_BRAND):
CREATE TABLE CAR_BRAND (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  BRAND_NAME VARCHAR(32)
);

-- Inserindo dados na tabela de Marcas de Carros:
INSERT INTO CAR_BRAND (BRAND_NAME)
            VALUES ('Chevrolet'),
                   ('Toyota'),
                   ('Hyundai'),
                   ('Volkswagen'),
                   ('Jeep'),
                   ('Renault'),
                   ('Honda'),
                   ('Fiat');

-- Consultando a tabela de Marcas de Carros:
SELECT * FROM CAR_BRAND;