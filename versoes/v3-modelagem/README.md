# CestaData 3.0 — Levantamento do Minimundo e Modelagem Inicial

**Projeto acadêmico | Evolução do CestaData | Análise e Desenvolvimento de Sistemas**

## Contexto

O CestaData começou com exercícios em linguagem C voltados ao registro, análise e ordenação de preços simulados de produtos. Na terceira etapa, o projeto passa a explorar o **levantamento do minimundo de um pequeno supermercado fictício**, preparando a compreensão dos dados necessários para uma futura solução de gestão de produtos e estoque.

Esta atividade é uma **documentação preliminar de análise e modelagem**, e não uma implementação nova de software. **Não foram criadas tabelas SQL nem um novo código C para esta etapa.**

## Objetivo do levantamento

Delimitar o funcionamento básico de um supermercado fictício e identificar quem utiliza as informações, quais processos precisam ser representados e que entidades compõem o domínio do problema.

## Escopo inicial

O estudo concentra-se na organização das informações sobre:
- Produtos e suas categorias;
- Fornecedores;
- Estoque e movimentações de entrada e saída;
- Consultas e relatórios operacionais.

O foco é construir uma visão lógica do problema antes de projetar tabelas ou implementar novas funcionalidades.

## Atores identificados

| Ator | Participação no processo |
| --- | --- |
| Gestor | Acompanha a operação e consulta relatórios de apoio à decisão |
| Estoquista | Registra entradas e saídas e acompanha a disponibilidade de produtos |
| Responsável pelo cadastro | Organiza e mantém os registros de produtos e informações relacionadas |

## Processos do minimundo

1. **Cadastro de produtos:** registrar e manter informações de itens.
2. **Movimentação de estoque:** acompanhar entradas e saídas.
3. **Atualização e consulta:** verificar informações disponíveis e situação do estoque.
4. **Relatórios:** transformar registros em informações úteis à gestão.

## Entidades preliminares

| Entidade | Papel no domínio |
| --- | --- |
| **Produto** | Representa os itens comercializados |
| **Categoria** | Permite classificar os produtos |
| **Fornecedor** | Representa a origem comercial dos produtos |
| **Movimentação de Estoque** | Representa os registros de entrada e saída dos itens |

Essas entidades foram identificadas na fase inicial de análise. **Atributos, cardinalidades e regras detalhadas de relacionamento ainda precisarão ser definidos em etapas posteriores.**

## Dado x informação

**Dado** é o registro isolado, como uma quantidade, um preço ou a identificação de um produto. **Informação** surge quando os dados são organizados e contextualizados para responder a perguntas operacionais — por exemplo, quais produtos precisam de reposição ou como o estoque está se movimentando.

### Dados estruturados e não estruturados

- **Estruturados:** códigos, nomes, categorias, quantidades, preços e registros de movimentação organizados em campos definidos.
- **Não estruturados:** fotografias e documentos associados aos produtos e fornecedores, caso façam parte de uma evolução futura.

O núcleo inicial do estudo prioriza dados estruturados.

## Relação com as etapas anteriores

| Etapa | Principal aprendizado |
| --- | --- |
| **1.0** | Registros de preços e cálculos básicos |
| **2.0** | Organização de produtos com `struct`, vetores e Bubble Sort |
| **3.0** | Compreensão do domínio, requisitos iniciais e entidades necessárias antes da implementação |

A terceira etapa amplia a abordagem: além de **processar dados**, é necessário entender **quais dados o sistema deve representar, quem os utiliza e para quais decisões**.

## Possíveis próximas etapas

- Detalhar os atributos e regras de negócio;
- Elaborar um modelo entidade-relacionamento;
- Identificar chaves e relacionamentos;
- Evoluir para um modelo relacional e, posteriormente, SQL;
- Conectar a modelagem com uma futura versão funcional do CestaData.

Esses pontos são **possibilidades de evolução**, não funcionalidades já desenvolvidas.

---

> **Transparência:** este documento consolida o levantamento realizado na atividade acadêmica do CestaData 3.0 para fins de portfólio. O trabalho segue como estudo de caso fictício, sem uso de dados reais de supermercado.
