# Módulo 4: Modelagem e Armazenamento de Dados

Neste módulo, vamos abordar a **modelagem e o armazenamento de dados**, etapas fundamentais para garantir que as informações estejam organizadas e acessíveis para análises rápidas e eficientes. A modelagem define como os dados serão estruturados, enquanto o armazenamento envolve a escolha de tecnologias que suportem consultas escaláveis e de alto desempenho.

---

## 1. Conceitos de Modelagem de Dados

A modelagem de dados consiste em organizar os dados de maneira que eles possam ser facilmente acessados e analisados. Essa etapa é essencial para que o banco de dados possa responder rapidamente a consultas, além de garantir a integridade e a consistência das informações.

### Normalização: Definição e Aplicação em Bases de Dados Relacionais

**Normalização** é o processo de estruturar dados em um banco relacional para minimizar redundâncias e dependências. Ao normalizar uma base de dados, dividimos os dados em várias tabelas e definimos relacionamentos entre elas, o que melhora a integridade e reduz o armazenamento.

- **Vantagens**: Reduz redundância de dados, melhora a integridade e facilita a manutenção.
- **Exemplo**: Separar uma tabela de “Pedidos” em duas tabelas: uma para “Clientes” e outra para “Pedidos”, ligadas por uma chave estrangeira.

### Esquemas Estrela e Floco de Neve: Estruturas Comuns para Dados Analíticos

Para modelagem de dados analíticos, os **esquemas estrela** e **floco de neve** são comumente usados em Data Warehouses. Esses esquemas facilitam consultas analíticas e agregações.

- **Esquema Estrela**: Uma tabela central de fatos está relacionada a várias tabelas de dimensões. Ideal para consultas rápidas, com um design simples.
  - **Exemplo**: Tabela de “Fatos de Vendas” no centro, conectada a tabelas de dimensões como “Produto”, “Cliente” e “Tempo”.

- **Esquema Floco de Neve**: Similar ao esquema estrela, mas com dimensões normalizadas em várias tabelas. Ele é útil para melhorar a normalização e reduzir redundâncias nas dimensões, mas pode ser menos eficiente para consultas.
  - **Exemplo**: Dimensão de “Localização” dividida em “Cidade”, “Estado” e “País”.

---

## 2. Criação de Tabelas e Bancos de Dados para Análises

Após definir o modelo, a criação de tabelas e bancos de dados analíticos é uma etapa crítica para a eficiência das consultas.

### Estrutura de um Banco de Dados Analítico

Um banco de dados analítico é projetado para suportar grandes volumes de dados e otimizar consultas complexas, especialmente aquelas voltadas para relatórios e análise. Ele é estruturado para fornecer respostas rápidas a consultas agregadas e baseadas em filtros.

- **Tabelas de Fato**: Contêm dados transacionais (ex. vendas, visitas), com informações detalhadas.
- **Tabelas de Dimensão**: Contêm atributos ou características (ex. cliente, produto) que descrevem os dados nas tabelas de fato.

### Melhorias de Performance ao Criar Tabelas Desnormalizadas para Análise

Em muitos casos, tabelas **desnormalizadas** (ou seja, com dados agregados em uma única tabela) são criadas para melhorar a performance de consultas analíticas. Esse tipo de estrutura elimina a necessidade de joins complexos, acelerando o tempo de resposta.

- **Exemplo**: Em vez de ter tabelas separadas para “Vendas” e “Clientes”, uma tabela desnormalizada pode incluir os dados de vendas junto com informações básicas do cliente.
  
---

## 3. Armazenamento em Data Warehouses

Data Warehouses são repositórios projetados especificamente para análise de dados. Eles suportam grandes volumes de informações e são otimizados para consultas complexas e rápidas.

### BigQuery e Redshift: Características e Como Armazenar Grandes Volumes de Dados

**BigQuery** (Google Cloud) e **Redshift** (Amazon Web Services) são dois dos Data Warehouses mais populares para armazenar e consultar grandes volumes de dados. Eles oferecem escalabilidade e recursos de consulta otimizados.

- **BigQuery**: Data warehouse totalmente gerenciado pela Google Cloud, otimizado para consultas em SQL em larga escala e com uma estrutura de precificação baseada em dados processados. Suporta o uso de SQL padrão, integração com ferramentas de BI e fácil escalabilidade.
  
- **Redshift**: Serviço da AWS, projetado para análise de dados e que permite o armazenamento e processamento de grandes volumes. Ele utiliza uma arquitetura em cluster e oferece recursos de particionamento e distribuição de dados.

### Particionamento e Clustering de Dados para Otimização de Consultas

Para garantir a performance ideal em Data Warehouses, particionamento e clustering de dados são técnicas essenciais.

- **Particionamento**: Dividir dados em partes menores com base em uma coluna, como data. Isso permite que consultas acessem apenas a partição relevante, reduzindo o tempo de resposta.
  
  ```sql
  -- Exemplo de criação de tabela particionada no BigQuery
  CREATE TABLE vendas (
    data DATE,
    produto STRING,
    quantidade INT,
    valor FLOAT
  )
  PARTITION BY data;
  ```

- **Clustering**: Organiza os dados dentro de cada partição com base em colunas específicas, como cliente ou categoria, facilitando buscas mais rápidas.

  ```sql
  -- Exemplo de criação de tabela clusterizada no BigQuery
  CREATE TABLE vendas_cluster (
    data DATE,
    produto STRING,
    cliente STRING,
    quantidade INT,
    valor FLOAT
  )
  PARTITION BY data
  CLUSTER BY cliente;
  ```

---

Este módulo fornece as bases para entender e aplicar técnicas de modelagem e armazenamento de dados. Com esses conhecimentos, você estará preparado para projetar bancos de dados otimizados para análises, suportando grandes volumes de dados e facilitando a obtenção de insights de maneira rápida e eficiente.