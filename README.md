<h1 align="center">🛒 CestaData — Da Programação ao Banco de Dados</h1>

<p align="center"><strong>Projeto acadêmico • Análise e Desenvolvimento de Sistemas • Linguagem C, Modelagem de Dados e SQLite</strong></p>

<p align="center">
<img src="https://img.shields.io/badge/Linguagem-C-A8B9CC?style=for-the-badge&logo=c&logoColor=black" />
<img src="https://img.shields.io/badge/Algoritmo-Bubble%20Sort-336791?style=for-the-badge" />
<img src="https://img.shields.io/badge/Ambiente-Google%20Colab-F9AB00?style=for-the-badge&logo=googlecolab&logoColor=white" />
</p>

## 📌 Sobre o projeto

O **CestaData** faz parte da trajetória de aprendizagem em linguagem C na graduação em **Análise e Desenvolvimento de Sistemas**. A proposta utiliza preços *simulados* de produtos da cesta básica para exercitar organização e processamento de dados.

O projeto evoluiu em etapas: dos primeiros registros e cálculos de preços à **ordenação com Bubble Sort em C (2.0)** à **modelagem de dados (3.0)** e à **implementação do banco relacional SQLite na Experiência Prática IV**, usando Google Colab.

## 🚀 Evolução do projeto

| Etapa | Objetivo | Material |
| --- | --- | --- |
| **Versão inicial** | Primeira atividade acadêmica do CestaData, anterior ao uso de Bubble Sort | Código-fonte original ainda não recuperado; será incorporado sem alterações quando disponível |
| **CestaData 2.0 — Experiência Prática IV** | Organizar 10 produtos com nome e preço e exibir as sequências original, crescente e decrescente | [Código em C](versoes/v2-bubble-sort/cestadata_2_0.c) · [Notebook Colab](versoes/v2-bubble-sort/CestaData_2_0_Colab.ipynb) |
| **CestaData 3.0 — Modelagem de Dados (EP3)** | Minimundo, entidades, cardinalidades, DER lógico e estudo de normalização | [📘 Documentação da modelagem](versoes/v3-modelagem/README.md) |
| **CestaData 3.0 — Implementação SQL (EP4)** | Criação de seis tabelas SQLite, 50 registros fictícios, consultas com JOIN, saldos de estoque e integridade referencial | [💾 SQL, Colab e evidências](versoes/v3-modelagem/ep4-sql/README.md) |

> O código da etapa inicial **não foi recriado artificialmente**. Esta organização permite preservar a versão original assim que for localizada e comparar as duas implementações com fidelidade.

## 🧩 Novidade: CestaData 3.0 — entendimento do negócio

A nova etapa amplia a visão de desenvolvimento: antes de criar novas tabelas ou escrever SQL, estudamos o **minimundo do supermercado** e o fluxo de informações que um sistema precisaria representar.

- **Atores:** gestor, estoquista e responsável pelo cadastro;
- **Processos:** cadastro de produtos, entradas/saídas, consultas e relatórios;
- **Entidades do DER:** Produto, Categoria, Fornecedor, Produto_Fornecedor, Usuário e Movimentação_Estoque;
- **Conceitos:** diferença entre dado e informação e dados estruturados/não estruturados.

📘 **[Ler o levantamento completo da versão 3.0](versoes/v3-modelagem/README.md)**

> A modelagem EP3 foi uma etapa analítica e documental. **Na etapa seguinte (EP4), o banco foi implementado em SQLite**, com scripts SQL e notebook, mantendo o código C 2.0 preservado.

---

## 🗃️ Diagramas Entidade-Relacionamento — CestaData 3.0

As aulas de **Modelagem de Dados** avançaram da identificação das entidades para o desenho dos **relacionamentos e suas cardinalidades**, além da revisão do modelo até a **Terceira Forma Normal (3FN)**.

### DER inicial

![Diagrama Entidade-Relacionamento inicial](imagens/CestaData_3_0_DER_Inicial.png)

O modelo inicial apresenta seis entidades: **Categoria, Produto, Fornecedor, Produto_Fornecedor, Usuário e Movimentação_Estoque**.

**Relacionamentos principais:** Categoria → Produto (1:N), Produto → Movimentação (1:N), Usuário → Movimentação (1:N) e a relação **Produto ↔ Fornecedor (N:N)**, resolvida pela entidade associativa **Produto_Fornecedor**, com chave primária composta.

### DER final — 3FN

![Diagrama Entidade-Relacionamento final em 3FN](imagens/CestaData_3_0_DER_Final_3FN.png)

A segunda imagem registra a etapa de revisão da modelagem e normalização até a **3FN**, com atenção à organização das entidades, chaves e dependências entre atributos.

📘 **[Ver explicação dos relacionamentos, cardinalidades e evolução da modelagem](versoes/v3-modelagem/README.md)**

> Os diagramas acima registram a etapa de modelagem (EP3). **A implementação SQL e sua execução no Colab foram documentadas separadamente na EP4**, mais abaixo.

---

## 🆕 Última atualização — DER lógico final da EP3

A nova etapa da disciplina consolidou o **DER lógico final**, com seis entidades, relacionamentos e chaves (PK/FK), aplicando conceitos de **normalização até a 3FN**.

![DER lógico final da EP3 — CestaData 3.0](imagens/CestaData_3_0_DER_Logico_Final_EP3.png)

**Principal evolução:** o saldo do estoque é **derivado das movimentações de entrada e saída**, evitando duplicar a quantidade atual na entidade `PRODUTO`. O modelo preserva as relações **Categoria → Produto (1:N)**, **Produto → Movimentação (1:N)**, **Usuário → Movimentação (1:N)** e **Produto ↔ Fornecedor (N:N)** por meio de `PRODUTO_FORNECEDOR`.

📘 [Ler a documentação completa da EP3, incluindo normalização e histórico dos três DERs](versoes/v3-modelagem/README.md).

> Este diagrama corresponde à modelagem lógica da EP3. A etapa posterior EP4 implementou e testou o banco SQLite.

---

## 💾 Última atividade da faculdade — SQLite e SQL (EP4)

A **Experiência Prática IV** transformou o modelo lógico do CestaData 3.0 em um **banco de dados relacional implementado no Google Colab**, usando Python (`sqlite3`) e SQL.

- **Estrutura:** seis tabelas com chaves primárias, estrangeiras e restrições de integridade;
- **Povoamento:** 50 registros fictícios de categorias, fornecedores, usuários, produtos, associações e movimentações;
- **Consultas:** `SELECT`, `JOIN`, `WHERE`, `ORDER BY`, `LIMIT`, agregações e cálculo de saldo;
- **Operações:** inclusão e atualização de registros, além de testes de integridade referencial.

### Criação das tabelas no Colab

![Ambiente de criação DDL SQLite](imagens/01_ambiente_e_criacao_ddl.png)

### Povoamento e conferência dos dados

![Povoamento INSERT](imagens/02_povoamento_insert.png)

![Validação dos registros](imagens/03_validacao_registros.png)

### Consulta com JOIN e cálculo do saldo

![Consulta SQL JOIN](imagens/04_consulta_join.png)

![Saldo de estoque calculado](imagens/05_saldo_estoque.png)

### Teste de integridade referencial

![Teste de integridade do banco](imagens/06_integridade_referencial.png)

**Mais evidências:** [Consulta de produtos](imagens/07_consulta_produtos.png) · [UPDATE do arroz](imagens/08_atualizacao_arroz_update.png) · [Consultas exploratórias](imagens/09_consultas_exploratorias_sql.png) · [Resultados SELECT](imagens/10_resultados_consultas_select.png)

### Arquivos para reproduzir a atividade

- [`01_estrutura.sql`](versoes/v3-modelagem/ep4-sql/01_estrutura.sql) — criação das tabelas;
- [`02_povoamento.sql`](versoes/v3-modelagem/ep4-sql/02_povoamento.sql) — dados fictícios;
- [`CestaData_3_0_EP4_Colab.ipynb`](versoes/v3-modelagem/ep4-sql/CestaData_3_0_EP4_Colab.ipynb) — notebook completo;
- **[Documentação e galeria de todas as 10 evidências](versoes/v3-modelagem/ep4-sql/README.md)**.

> Importante: o notebook recria o banco temporário de testes ao executar sua primeira célula. Faça backup de dados que deseje preservar antes de reiniciá-lo.

---

## ⚙️ O que a versão 2.0 faz?

- Armazena **10 produtos simulados** com nome e preço utilizando `struct Produto`;
- Exibe os produtos na sequência original;
- Executa **Bubble Sort crescente**, do menor para o maior preço;
- Executa **Bubble Sort decrescente**, do maior para o menor preço;
- Mantém nomes e preços associados ao trocar os registros;
- Utiliza funções para exibição e ordenação, evitando repetir a mesma lógica.

### 🧠 Como funciona o Bubble Sort?

O algoritmo percorre pares de elementos vizinhos e troca suas posições quando estão fora da ordem desejada. A cada passagem, os itens se aproximam de sua posição final. O projeto utiliza laços `for` aninhados e uma condição para selecionar a ordem crescente ou decrescente.

O Bubble Sort foi escolhido pelo **valor didático**: ele permite observar claramente comparações e trocas, embora não seja o método mais eficiente para grandes volumes de dados.

## ▶️ Como executar

Com GCC e suporte a C11:

```bash
gcc -std=c11 -Wall -Wextra -pedantic versoes/v2-bubble-sort/cestadata_2_0.c -o cestadata
./cestadata
```

Também é possível abrir o [notebook no Google Colab](versoes/v2-bubble-sort/CestaData_2_0_Colab.ipynb), executar suas células e observar a saída.

## 📷 Evidências da Experiência Prática IV

### 1. Código e ambiente de desenvolvimento
![Código do CestaData](imagens/cestadata_01_codigo.png)

### 2. Preços na ordem original
![Produtos na ordem original](imagens/cestadata_02_precos_originais.png)

### 3. Ordenação crescente
![Preços em ordem crescente](imagens/cestadata_03_ordenacao_crescente.png)

### 4. Ordenação decrescente
![Preços em ordem decrescente](imagens/cestadata_04_ordenacao_decrescente.png)

### 5. Execução completa
![Execução completa do CestaData](imagens/cestadata_05_execucao_completa.png)

## 🎓 Aprendizagens

As versões anteriores reforçaram **vetores, estruturas (`struct`), funções e algoritmos de ordenação**. Com o CestaData 3.0, o aprendizado evoluiu para **levantamento de requisitos, modelagem de entidades e relacionamentos, identificação de chaves e normalização até a 3FN**, incluindo a decisão de calcular o saldo de estoque a partir das movimentações. Na EP4, os conceitos foram colocados em prática com **SQLite, comandos SQL e consultas no Google Colab**.

---

<p align="center">💡 Aprendendo, construindo e evoluindo com projetos acadêmicos reais.</p>
