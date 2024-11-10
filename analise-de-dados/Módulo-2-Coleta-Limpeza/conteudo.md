# Módulo 2: Coleta e Limpeza de Dados

Bem-vindo ao segundo módulo da nossa mentoria! Neste módulo, vamos explorar as etapas fundamentais para coletar e preparar dados para análise. Saber coletar e limpar dados é essencial para garantir que você trabalhe com informações precisas e organizadas, maximizando a qualidade das suas análises.

---

## 1. Métodos de Coleta de Dados

Antes de analisar ou manipular dados, é preciso saber como obtê-los. Os dados podem vir de várias fontes, e conhecer diferentes métodos de coleta permitirá que você acesse as informações necessárias com mais flexibilidade e eficiência.

### Coleta de Dados de Diferentes Fontes

#### 1.1 APIs (Application Programming Interfaces)
APIs são interfaces que permitem acessar dados de sistemas e serviços externos, como redes sociais, plataformas de ecommerce e bancos de dados públicos. Coletar dados via APIs oferece várias vantagens, como a possibilidade de obter dados em tempo real e filtrar informações antes mesmo de carregá-las para análise.

- **Exemplo**: Usar a API do Twitter para coletar tweets sobre um tema específico.
- **Ferramenta Recomendada**: Biblioteca `requests` do Python para realizar requisições HTTP.

#### 1.2 Arquivos CSV
Os arquivos CSV (Comma-Separated Values) são amplamente utilizados para armazenar e compartilhar dados estruturados de forma simples e compacta. São ideais para dados tabulares e permitem fácil manipulação com ferramentas como Excel e bibliotecas de análise.

- **Exemplo**: Conjuntos de dados públicos em formato CSV, como dados de mercado financeiro ou demográficos.
- **Ferramenta Recomendada**: Biblioteca `Pandas` para carregar e manipular arquivos CSV com facilidade.

#### 1.3 Bancos de Dados
Bancos de dados são utilizados para armazenar grandes volumes de dados de forma estruturada e com integridade. Para acessar dados de um banco, é necessário ter um sistema de gerenciamento de banco de dados (como PostgreSQL, MySQL) e usar SQL para fazer consultas.

- **Exemplo**: Consultar um banco de dados de uma empresa para obter informações de clientes ou produtos.
- **Ferramenta Recomendada**: `Pandas` com a biblioteca `SQLAlchemy` para conectar e extrair dados diretamente de bancos relacionais.

### Importação de Dados em Python com Pandas

A biblioteca Pandas facilita o processo de importação de dados para um DataFrame, que é uma estrutura de dados em formato de tabela. Com Pandas, você pode carregar dados de várias fontes, incluindo arquivos CSV e bancos de dados, e ainda fazer pré-processamento dos dados ao importá-los.

#### Exemplo de Importação de Dados de um Arquivo CSV
```python
import pandas as pd

# Carregando um arquivo CSV para um DataFrame
df = pd.read_csv('alunos.csv')
print(df.head())
```

#### Exemplo de Conexão com um Banco de Dados SQL
```python
from sqlalchemy import create_engine

# Conectando ao banco de dados PostgreSQL
engine = create_engine('postgresql://user:password@localhost:5432/alunos_db')
df = pd.read_sql('SELECT * FROM alunos', engine)
print(df.head())
```

---

## 2. Introdução à Limpeza de Dados

Após a coleta, os dados raramente estão prontos para uso imediato. É comum que os conjuntos de dados tenham inconsistências, erros e informações incompletas, o que pode comprometer a análise. A limpeza de dados é o processo de corrigir essas imperfeições para garantir que você trabalhe com informações de qualidade.

### Tratamento de Valores Nulos e Duplicados

- **Valores Nulos**: São valores ausentes ou inexistentes que podem impactar suas análises. É importante decidir se você deve substituí-los por um valor padrão, remover as linhas afetadas ou aplicar técnicas de preenchimento.
  - **Exemplo**: Substituir valores nulos pela média da coluna ou por um valor padrão.
  
  ```python
  # Substituindo valores nulos pela média
  df['idade'].fillna(df['idade'].mean(), inplace=True)
  ```

- **Valores Duplicados**: São registros que aparecem mais de uma vez no dataset e podem distorcer os resultados das análises. Geralmente, é recomendado remover duplicatas para garantir a integridade dos dados.
  - **Exemplo**: Remover linhas duplicadas em um DataFrame.
  
  ```python
  # Removendo duplicatas
  df.drop_duplicates(inplace=True)
  ```

### Ajuste de Formatação (Datas, Textos)

Formatar dados de maneira consistente é essencial para manter a organização e a legibilidade do dataset. Erros comuns incluem datas em formatos variados, textos com capitalização inconsistente ou espaços em excesso.

- **Formatação de Datas**: Padronizar o formato de datas ajuda a evitar erros e facilita a manipulação.
  
  ```python
  # Convertendo uma coluna para o formato de data
  df['data_nascimento'] = pd.to_datetime(df['data_nascimento'], format='%Y-%m-%d')
  ```

- **Formatação de Textos**: Padronizar capitalização e remover espaços em excesso.
  
  ```python
  # Padronizando textos para letras minúsculas e removendo espaços
  df['nome'] = df['nome'].str.lower().str.strip()
  ```

### Técnicas de Normalização de Dados

A normalização ajuda a manter a consistência e facilita a comparação entre diferentes registros. Exemplos comuns de normalização incluem escalar valores numéricos, padronizar categorias de texto e transformar dados em uma estrutura mais organizada.

- **Exemplo**: Normalizar valores numéricos para uma escala de 0 a 1.

  ```python
  from sklearn.preprocessing import MinMaxScaler

  scaler = MinMaxScaler()
  df[['idade']] = scaler.fit_transform(df[['idade']])
  ```
