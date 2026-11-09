<h1 align="center">🛒 CestaData — Da Programação à Modelagem de Dados</h1>

<p align="center"><strong>Projeto acadêmico • Análise e Desenvolvimento de Sistemas • Linguagem C e Modelagem de Dados</strong></p>

<p align="center">
<img src="https://img.shields.io/badge/Linguagem-C-A8B9CC?style=for-the-badge&logo=c&logoColor=black" />
<img src="https://img.shields.io/badge/Algoritmo-Bubble%20Sort-336791?style=for-the-badge" />
<img src="https://img.shields.io/badge/Ambiente-Google%20Colab-F9AB00?style=for-the-badge&logo=googlecolab&logoColor=white" />
</p>

## 📌 Sobre o projeto

O **CestaData** faz parte da trajetória de aprendizagem em linguagem C na graduação em **Análise e Desenvolvimento de Sistemas**. A proposta utiliza preços *simulados* de produtos da cesta básica para exercitar organização e processamento de dados.

O projeto evoluiu em etapas: dos primeiros registros e cálculos de preços à **ordenação com Bubble Sort em C (2.0)** e, agora, ao **levantamento de requisitos e modelagem inicial de dados (3.0)** para o minimundo de um supermercado fictício.

## 🚀 Evolução do projeto

| Etapa | Objetivo | Material |
| --- | --- | --- |
| **Versão inicial** | Primeira atividade acadêmica do CestaData, anterior ao uso de Bubble Sort | Código-fonte original ainda não recuperado; será incorporado sem alterações quando disponível |
| **CestaData 2.0 — Experiência Prática IV** | Organizar 10 produtos com nome e preço e exibir as sequências original, crescente e decrescente | [Código em C](versoes/v2-bubble-sort/cestadata_2_0.c) · [Notebook Colab](versoes/v2-bubble-sort/CestaData_2_0_Colab.ipynb) |
| **CestaData 3.0 — Modelagem inicial** | Levantar o minimundo de um supermercado fictício: escopo, atores, processos, entidades e dado x informação | [📘 Documentação do CestaData 3.0](versoes/v3-modelagem/README.md) |

> O código da etapa inicial **não foi recriado artificialmente**. Esta organização permite preservar a versão original assim que for localizada e comparar as duas implementações com fidelidade.

## 🧩 Novidade: CestaData 3.0 — entendimento do negócio

A nova etapa amplia a visão de desenvolvimento: antes de criar novas tabelas ou escrever SQL, estudamos o **minimundo do supermercado** e o fluxo de informações que um sistema precisaria representar.

- **Atores:** gestor, estoquista e responsável pelo cadastro;
- **Processos:** cadastro de produtos, entradas/saídas, consultas e relatórios;
- **Entidades identificadas:** Produto, Categoria, Fornecedor e Movimentação de Estoque;
- **Conceitos:** diferença entre dado e informação e dados estruturados/não estruturados.

📘 **[Ler o levantamento completo da versão 3.0](versoes/v3-modelagem/README.md)**

> Esta etapa é **analítica e documental**. Não há uma implementação 3.0 em C ou SQL concluída nesta fase; o código 2.0 continua preservado abaixo.

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

As versões anteriores reforçaram **vetores, estruturas (`struct`), funções e algoritmos de ordenação**. Com o CestaData 3.0, o aprendizado evoluiu para **levantamento de requisitos, compreensão dos processos de negócio e identificação inicial de entidades e informações**, preparando futuras etapas de modelagem.

---

<p align="center">💡 Aprendendo, construindo e evoluindo com projetos acadêmicos reais.</p>
