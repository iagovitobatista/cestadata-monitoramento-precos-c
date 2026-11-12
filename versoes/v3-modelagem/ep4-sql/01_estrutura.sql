-- CestaData 3.0 - Estrutura logica para SQLite
PRAGMA foreign_keys = ON;
CREATE TABLE IF NOT EXISTS Categoria (
 id_categoria INTEGER PRIMARY KEY,
 nome TEXT NOT NULL UNIQUE,
 descricao TEXT
);
CREATE TABLE IF NOT EXISTS Fornecedor (
 id_fornecedor INTEGER PRIMARY KEY,
 razao_social TEXT NOT NULL,
 cnpj TEXT UNIQUE,
 telefone TEXT,
 email TEXT
);
CREATE TABLE IF NOT EXISTS Usuario (
 id_usuario INTEGER PRIMARY KEY,
 nome TEXT NOT NULL,
 email TEXT UNIQUE,
 perfil TEXT NOT NULL CHECK (perfil IN ('Gestor','Estoquista','Cadastro','Administrador')),
 ativo INTEGER NOT NULL CHECK (ativo IN (0,1))
);
CREATE TABLE IF NOT EXISTS Produto (
 id_produto INTEGER PRIMARY KEY,
 nome TEXT NOT NULL,
 descricao TEXT,
 preco NUMERIC NOT NULL CHECK (preco >= 0),
 estoque_minimo INTEGER NOT NULL CHECK (estoque_minimo >= 0),
 id_categoria INTEGER NOT NULL,
 FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria) ON DELETE RESTRICT
);
CREATE TABLE IF NOT EXISTS Produto_Fornecedor (
 id_produto INTEGER NOT NULL,
 id_fornecedor INTEGER NOT NULL,
 PRIMARY KEY (id_produto,id_fornecedor),
 FOREIGN KEY (id_produto) REFERENCES Produto(id_produto) ON DELETE RESTRICT,
 FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor) ON DELETE RESTRICT
);
CREATE TABLE IF NOT EXISTS Movimentacao_Estoque (
 id_movimentacao INTEGER PRIMARY KEY,
 id_produto INTEGER NOT NULL,
 id_usuario INTEGER NOT NULL,
 tipo TEXT NOT NULL CHECK (tipo IN ('ENTRADA','SAIDA')),
 quantidade INTEGER NOT NULL CHECK (quantidade > 0),
 data_movimentacao TEXT NOT NULL,
 FOREIGN KEY (id_produto) REFERENCES Produto(id_produto) ON DELETE RESTRICT,
 FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE RESTRICT
);