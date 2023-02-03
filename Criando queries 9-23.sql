-- SQLite

-- 9.Construa uma query SQL para editar o campo e-mail do cliente com nome Carolina,
-- onde devemos trocar de “carol@ig.com.br” para “carolina@campuscode.com.br”.
UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE ID = 9;

-- 10.Construa uma query SQL para editar a data de nascimento do cliente com nome Josefa para “1986-06-19”.
UPDATE CUSTOMERS SET BIRTH_DATE = '1986-06-19' WHERE ID = 4;

-- 11.Construa uma query SQL para editar o ano do automóvel com nome Fiat Cronos de “2022” para “2019” da tabela de CARS
UPDATE CARS SET YEAR = '2019' WHERE ID = 4;

-- 12.Construa uma query SQL para excluir o automóvel com nome Hyundai HB20 1.6 da tabela de CARS
DELETE FROM CARS WHERE ID = 2;

-- 13.Construa uma query SQL para alterar o nome da coluna “PHONE” da tabela de EMPLOYEES, para “PHONE NUMBER”
ALTER TABLE EMPLOYEES RENAME PHONE TO PHONE_NUMBER;

-- 14.Construa uma consulta capaz de exibir somente o name, lastname e email dos clientes que moram no estado de SP
SELECT NAME AS 'Nome',
       LASTNAME AS 'Sobrenome',
       EMAIL AS 'E-mail' FROM CUSTOMERS WHERE STATE = 'SP';

-- 15.Construa uma consulta capaz de exibir somente os automóveis que estão com o status “Liberado”
SELECT * FROM CARS WHERE STATUS = 'Liberado';

-- 16.Construa uma consulta capaz de exibir todos os automóveis do ano 2016.
SELECT * FROM CARS WHERE YEAR = 2016;

-- 17.Construa uma consulta capaz de exibir todos os funcionários e seus respectivos cargos
SELECT E.NAME AS 'Funcionário',
       P.DESCRIPTION AS 'Cargo' FROM EMPLOYEES AS E

LEFT JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID);

-- 18.Construa uma consulta capaz de exibir somente os funcionários que realizaram mais ou igual a 2 locações.
SELECT NAME FROM EMPLOYEES

JOIN LOCATIONS ON (EMPLOYEES.ID = LOCATIONS.EMPLOYEE_ID)
GROUP BY NAME HAVING COUNT(EMPLOYEE_ID) >= 2;

-- 19.Construa uma consulta capaz de exibir somente os clientes que realizaram mais ou igual a 2 locações.
SELECT * FROM CUSTOMERS

JOIN LOCATIONS ON (CUSTOMERS.ID = LOCATIONS.CUSTOMER_ID)
GROUP BY NAME HAVING COUNT(CUSTOMER_ID) >= 2;

-- 20.Construa uma consulta capaz de exibir todas as locações realizadas, assim como também o nome do cliente,
-- do automóvel e do funcionário vinculados em cada locação
SELECT LOC.ID AS 'Código',
       LOC.START_DATE AS 'Data Início',
       LOC.END_DATE AS 'Data Final',
       LOC.TOTAL AS 'Valor Total',
       CUS.NAME AS 'Cliente',
       CAR.NAME AS 'Carro Alugado',
       EMP.NAME AS 'Funcionário' FROM LOCATIONS AS LOC

LEFT JOIN CUSTOMERS AS CUS ON (LOC.CUSTOMER_ID = CUS.ID)
LEFT JOIN CARS AS CAR ON (LOC.CAR_ID = CAR.ID)
LEFT JOIN EMPLOYEES AS EMP ON (LOC.EMPLOYEE_ID = EMP.ID);

-- 21.Construa uma consulta capaz de exibir quantas locações existem na tabela de LOCATIONS
SELECT COUNT(ID) AS 'Quantidade de Locações' FROM LOCATIONS;

-- 22.Construa uma consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.
SELECT ID AS 'Código', MAX(TOTAL) AS 'Maior Valor' FROM LOCATIONS;

-- 23.Construa uma consulta capaz de exibir todas as locações realizadas, entre as datas “2022-05-20” a “2022-12-25”
SELECT * FROM LOCATIONS WHERE START_DATE BETWEEN '2022-05-20' AND '2022-12-25';