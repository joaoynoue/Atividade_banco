 1 # 
CREATE TABLE cliente(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  CPF VARCHAR(14) NOT NULL,
  cidade VARCHAR(100)
);

Código para criar uma tabela cliente


INSERT into cliente (nome,CPF,cidade)
VALUES
('Fernanda Torres','555.666.777-88' ,'São Paulo'),
('Luiz Carlos','999.888.777-66','Curitiba');

Código para inserir os clientes com seus dados 


2# 
INSERT INTO caminhoes (modelo,placa)
VALUES
('DAF XF','GHI2J45'),
('MAN TGX','LMN7O66');

Código para inserir modelo e placa 

3# 
CREATE TABLE entrega (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data DATE NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  status VARCHAR(20) NOT NULL,
  cliente_id INT NOT NULL,
  caminhao_id INT NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES cliente(id),
  FOREIGN KEY (caminhao_id) REFERENCES caminhao(id)
);


Criar Tabela Entrega 


4# 

UPDATE entrega
SET status = 'Concluído'
WHERE id = 1;

atualização de status de entrega


5# 
UPDATE cliente
SET cpf = '555.666.777-00'
WHERE id = 1;

 Atualização CPF

6 #

DELETE FROM entrega
WHERE cliente_id = 2;
DELETE FROM cliente
WHERE id = 2;

deletar primeiro da chave estrangeira que está relacionada a entrega e depois na tabela clientes.