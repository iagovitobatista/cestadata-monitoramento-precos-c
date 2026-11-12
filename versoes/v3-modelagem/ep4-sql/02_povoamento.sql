-- CestaData 3.0 - Povoamento inicial: executar apenas uma vez em banco vazio.
-- As entidades independentes sao inseridas antes das dependentes.
BEGIN TRANSACTION;
-- 1. Categorias
INSERT INTO Categoria (id_categoria,nome,descricao) VALUES
(1,'Alimentos','Produtos alimenticios basicos'),
(2,'Bebidas','Produtos para consumo liquido'),
(3,'Mercearia','Produtos secos e complementares'),
(4,'Laticinios','Leites e derivados');
-- 2. Fornecedores (identificadores ficticios; nao sao CNPJs validos)
INSERT INTO Fornecedor (id_fornecedor,razao_social,cnpj,telefone,email) VALUES
(1,'Distribuidora Alfa','00000000000001','11999990001','alfa@exemplo.com'),
(2,'Atacado Beta','00000000000002','11999990002','beta@exemplo.com'),
(3,'Comercial Gama','00000000000003','11999990003','gama@exemplo.com'),
(4,'Distribuidora Delta','00000000000004','11999990004','delta@exemplo.com'),
(5,'Atacado Omega','00000000000005','11999990005','omega@exemplo.com');
-- 3. Usuarios
INSERT INTO Usuario (id_usuario,nome,email,perfil,ativo) VALUES
(1,'Ana Silva','ana@exemplo.com','Gestor',1),
(2,'Carlos Souza','carlos@exemplo.com','Estoquista',1),
(3,'Mariana Lima','mariana@exemplo.com','Cadastro',1),
(4,'Pedro Santos','pedro@exemplo.com','Administrador',1);
-- 4. Produtos: mesmos precos do CestaData 2.0
INSERT INTO Produto (id_produto,nome,descricao,preco,estoque_minimo,id_categoria) VALUES
(1,'Arroz','Pacote de arroz 5kg',24.90,10,1),
(2,'Feijao','Pacote de feijao 1kg',8.50,10,1),
(3,'Cafe','Pacote de cafe 500g',19.90,8,3),
(4,'Acucar','Pacote de acucar 1kg',5.20,10,3),
(5,'Oleo','Oleo vegetal 900ml',7.80,10,3),
(6,'Leite','Leite integral 1L',5.90,10,4),
(7,'Macarrao','Macarrao 500g',4.50,12,1),
(8,'Farinha','Farinha de trigo 1kg',6.70,10,3),
(9,'Sal','Pacote de sal 1kg',3.20,8,3),
(10,'Margarina','Margarina 500g',9.90,10,4);
-- 5. Associacoes N:M
INSERT INTO Produto_Fornecedor (id_produto,id_fornecedor) VALUES
(1,1),(1,2),(2,1),(2,3),(3,2),(4,3),(5,4),(6,5),(7,2),(8,4),(9,3),(10,5);
-- 6. Movimentacoes: entradas iniciais, depois saidas
INSERT INTO Movimentacao_Estoque (id_movimentacao,id_produto,id_usuario,tipo,quantidade,data_movimentacao) VALUES
(1,1,2,'ENTRADA',50,'2026-11-01 09:00:00'),
(2,2,2,'ENTRADA',40,'2026-11-01 09:10:00'),
(3,3,2,'ENTRADA',30,'2026-11-01 09:20:00'),
(4,4,2,'ENTRADA',45,'2026-11-01 09:30:00'),
(5,5,2,'ENTRADA',35,'2026-11-01 09:40:00'),
(6,6,2,'ENTRADA',60,'2026-11-01 09:50:00'),
(7,7,2,'ENTRADA',50,'2026-11-01 10:00:00'),
(8,8,2,'ENTRADA',25,'2026-11-01 10:10:00'),
(9,9,2,'ENTRADA',30,'2026-11-01 10:20:00'),
(10,10,2,'ENTRADA',20,'2026-11-01 10:30:00'),
(11,1,2,'SAIDA',12,'2026-11-02 14:00:00'),
(12,2,2,'SAIDA',8,'2026-11-02 14:10:00'),
(13,5,2,'SAIDA',6,'2026-11-02 14:20:00'),
(14,6,2,'SAIDA',15,'2026-11-02 14:30:00'),
(15,10,2,'SAIDA',5,'2026-11-02 14:40:00');
COMMIT;