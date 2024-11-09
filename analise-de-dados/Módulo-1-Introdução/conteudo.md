# Módulo 1: Introdução à Análise de Dados

Bem-vindo ao primeiro módulo da nossa mentoria em **Análise de Dados**! Aqui, vamos explorar os fundamentos que formam a base da análise de dados, passando por conceitos básicos de tipos de dados, operações estatísticas e introdução às principais ferramentas e linguagens utilizadas pelos profissionais da área.

---

## 1. Introdução aos Conceitos Básicos de Dados

Para começar nossa jornada, precisamos entender o que são dados e como eles podem ser categorizados. Dados são fragmentos de informação que, quando analisados e interpretados, podem oferecer insights valiosos para a tomada de decisões.

### Tipos de Dados
Os dados podem ser divididos em duas categorias principais:

- **Estruturados**: Dados organizados em tabelas com linhas e colunas, como planilhas e bancos de dados. São fáceis de manipular e ideais para armazenar informações em formatos tabelares.
- **Não Estruturados**: Dados que não seguem um formato fixo, como textos livres, imagens, vídeos e registros de voz. Analisar esse tipo de dado é mais desafiador e geralmente exige técnicas avançadas de processamento.

### Principais Operações Estatísticas
Para começar a trabalhar com dados, é essencial conhecer algumas operações estatísticas básicas:

- **Média**: A soma de todos os valores dividida pelo número de valores, representando um "valor central" típico dos dados.
- **Mediana**: O valor que divide o conjunto de dados ao meio, sendo útil para entender a distribuição.
- **Moda**: O valor mais frequente em um conjunto de dados, ideal para identificar padrões.
- **Desvio Padrão**: Uma medida da variabilidade ou dispersão dos dados em relação à média. Um desvio padrão alto indica que os dados estão dispersos, enquanto um baixo sugere proximidade dos valores em relação à média.

---

## 2. Ferramentas e Linguagens para Análise de Dados

Uma análise eficaz depende de ferramentas e linguagens específicas, cada uma com suas particularidades e aplicações. Vamos introduzir três ferramentas essenciais: **SQL**, **Python** (com a biblioteca Pandas), e **Excel**.

### SQL (Structured Query Language)
SQL é a linguagem padrão para manipulação de dados em bancos de dados relacionais. Permite extrair, filtrar e agregar dados de forma eficiente.

- **Usos Principais**: Manipulação de grandes volumes de dados estruturados em bancos relacionais.
- **Sintaxe Básica**: As consultas SQL começam com comandos como `SELECT`, `FROM`, `WHERE` para extrair dados.

### Python com Pandas
Python é uma das linguagens mais populares para análise de dados, e a biblioteca Pandas facilita a manipulação de dados em estruturas chamadas DataFrames.

- **Usos Principais**: Limpeza, transformação e análise de dados, com foco em operações em massa.
- **Exemplos**: Carregar datasets, manipular e filtrar dados, gerar estatísticas descritivas e criar gráficos simples.

### Excel
Embora muitas vezes subestimado, o Excel é uma ferramenta poderosa para análises iniciais e exploração de dados.

- **Usos Principais**: Ideal para explorar rapidamente conjuntos de dados pequenos a médios, fazer operações básicas e visualizar dados com gráficos.

---

Aqui está a seção **3. Introdução à Lógica de Consultas** atualizada, com a lógica separada entre SQL e Pandas:

---

## 3. Introdução à Lógica de Consultas com SQL e Pandas

Tanto SQL quanto a biblioteca Pandas do Python são ferramentas essenciais para manipulação e extração de dados. Neste tópico, vamos introduzir a lógica de consultas em ambas as ferramentas, mostrando como realizar operações básicas em cada uma delas.

### 3.1 Lógica de Consultas em SQL

SQL é uma das linguagens mais populares e amplamente utilizadas para manipulação de dados em bancos de dados relacionais. Dominar sua sintaxe básica é fundamental para trabalhar com grandes volumes de dados armazenados em tabelas.

#### Sintaxe Básica do SQL
Aqui estão os principais componentes de uma consulta SQL:

- **`SELECT`**: Especifica as colunas que você quer recuperar.
- **`FROM`**: Indica a tabela de onde os dados serão extraídos.
- **`WHERE`**: Filtra os registros com base em uma condição.

#### Exemplo de Consulta
```sql
SELECT nome, idade
FROM alunos
WHERE idade > 18;
```
Essa consulta busca os nomes e idades dos alunos com mais de 18 anos.

#### Estruturação de Consultas para Extração de Dados
Além das cláusulas básicas, SQL permite o uso de funções de agregação e comandos para ordenação e agrupamento:

- **`ORDER BY`**: Ordena os resultados.
- **`GROUP BY`**: Agrupa registros que têm valores em comum.
- **Funções de Agregação**: `SUM`, `AVG`, `COUNT`, entre outras, para resumir dados.

#### Exemplo de Consulta com Agregação
```sql
SELECT curso, COUNT(*) AS total_alunos
FROM alunos
GROUP BY curso;
```
Essa consulta conta quantos alunos há em cada curso.

---

### 3.2 Lógica de Consultas em Pandas

A biblioteca Pandas permite manipular dados de forma muito semelhante ao SQL, mas com uma sintaxe baseada em Python. Pandas trabalha principalmente com DataFrames, estruturas de dados que organizam informações em linhas e colunas, similar a uma tabela.

#### Carregando Dados
Para começar, é comum carregar os dados a partir de um arquivo, como um CSV:
```python
import pandas as pd

# Carregar dados a partir de um arquivo CSV
df = pd.read_csv('alunos.csv')
```

#### Seleção de Colunas e Filtragem de Dados
Assim como em SQL, você pode selecionar colunas específicas e filtrar dados com condições.

- **Seleção de Colunas**
  ```python
  # Seleciona apenas as colunas 'nome' e 'idade'
  df[['nome', 'idade']]
  ```

- **Filtragem de Dados**
  ```python
  # Filtra alunos com idade maior que 18
  df[df['idade'] > 18]
  ```

#### Agregação e Agrupamento
Pandas oferece funções para agregar e agrupar dados de forma similar ao SQL:

- **Agrupamento e Contagem**
  ```python
  # Conta o número de alunos em cada curso
  df.groupby('curso').size()
  ```

- **Outras Funções de Agregação**
  ```python
  # Calcula a média de idade por curso
  df.groupby('curso')['idade'].mean()
  ```

#### Exemplo Completo com Filtragem e Agrupamento
```python
# Seleciona alunos de um curso específico e calcula a idade média
df[df['curso'] == 'Matemática'].groupby('curso')['idade'].mean()
```

---

### Exercícios Introdutórios

Para praticar, você pode trabalhar com pequenos datasets, aplicando tanto consultas em SQL quanto operações em Pandas para se familiarizar com a lógica e sintaxe de ambas as ferramentas. Experimente realizar seleções, filtragens e agregações para entender melhor o funcionamento de cada abordagem.

---

Essa introdução fornece uma base para a lógica de consultas em SQL e Pandas, preparando você para lidar com dados em diferentes contextos e ambientes.
---

Esse módulo é o primeiro passo para construir uma base sólida em Análise de Dados. Aprofunde-se nos conceitos e pratique bastante para ganhar confiança no uso das ferramentas e linguagens apresentadas!