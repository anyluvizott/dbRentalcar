-- SQLite

-- Criando tabela de Cargos (Positions):
CREATE TABLE POSITIONS (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  DESCRIPTION VARCHAR(120) NOT NULL
);

-- Inserindo dados na tabela de Cargos:
INSERT INTO POSITIONS (DESCRIPTION)
            VALUES ('Gerente de vendas'),
                   ('Gerente de compras'),
                   ('Vendedor'),
                   ('Mecânico'),
                   ('Assistente Administrativo');

-- Consultando a tabela de Cargos:
SELECT * FROM POSITIONS;