Aqui está o conteúdo para o arquivo `atividades.md`, que detalha as atividades práticas em SQL e Pandas e como executá-las.

---

# Atividades Práticas

Este módulo inclui duas atividades práticas: uma utilizando SQL em um banco de dados PostgreSQL e outra com a biblioteca Pandas em Python, usando Jupyter Notebook. Abaixo estão as instruções detalhadas para configurar e executar cada atividade.

---

## Atividade 1: Manipulação de Dados com SQL (PostgreSQL e pgAdmin)

Nesta atividade, vamos praticar consultas SQL em um banco de dados PostgreSQL, explorando a tabela `alunos`. O ambiente será configurado com Docker Compose, incluindo o PostgreSQL e o pgAdmin para gerenciamento do banco de dados.

### Objetivos da Atividade
1. Criar e configurar um banco de dados PostgreSQL com Docker.
2. Realizar consultas SQL para selecionar, filtrar e agrupar dados na tabela `alunos`.
3. Utilizar o pgAdmin para visualizar e manipular os dados no banco.

### Estrutura da Tabela
A tabela `alunos` contém os seguintes campos:
- `id`: Identificador único do aluno.
- `nome`: Nome do aluno.
- `idade`: Idade do aluno.
- `curso`: Curso em que o aluno está matriculado.

### Instruções de Configuração

1. Certifique-se de ter o Docker e o Docker Compose instalados.
2. Navegue até o diretório onde o arquivo `docker-compose.yml` está localizado.
3. Execute o comando abaixo para iniciar os contêineres:
   ```bash
   docker-compose up -d
   ```

### Acessando o Banco de Dados com pgAdmin

1. Abra o pgAdmin no navegador em [http://localhost:8080](http://localhost:8080).
2. Faça login no pgAdmin usando as credenciais:
   - **Email**: `admin@admin.com`
   - **Senha**: `admin`
3. Adicione uma nova conexão no pgAdmin:
   - **Host**: `db`
   - **Database**: `alunos_db`
   - **Username**: `aluno_user`
   - **Password**: `password`

### Consultas SQL para Executar

Acesse o banco de dados `alunos_db` e execute as seguintes consultas para praticar:

1. **Selecionar todos os dados da tabela `alunos`**:
   ```sql
   SELECT * FROM alunos;
   ```

2. **Filtrar alunos com idade maior que 21 anos**:
   ```sql
   SELECT nome, idade FROM alunos WHERE idade > 21;
   ```

3. **Agrupar por curso e contar o número de alunos em cada curso**:
   ```sql
   SELECT curso, COUNT(*) AS total_alunos FROM alunos GROUP BY curso;
   ```

---

## Atividade 2: Manipulação de Dados com Pandas (Jupyter Notebook)

Nesta atividade, vamos utilizar a biblioteca Pandas em Python para explorar e manipular dados contidos no arquivo `alunos.csv`. O ambiente será configurado com Jupyter Notebook em um contêiner Docker para uma experiência interativa.

### Objetivos da Atividade
1. Carregar dados de um arquivo CSV para um DataFrame do Pandas.
2. Realizar operações de seleção, filtragem e agregação com Pandas.
3. Explorar o dataset `alunos.csv` e calcular métricas, como média de idade por curso.

### Instruções de Configuração

1. Certifique-se de ter o Docker e o Docker Compose instalados.
2. Navegue até o diretório onde o arquivo `docker-compose.yml` está localizado.
3. Execute o comando abaixo para iniciar o Jupyter Notebook:
   ```bash
   docker-compose up -d
   ```

### Acessando o Jupyter Notebook

1. Abra o Jupyter Notebook no navegador em [http://localhost:8888](http://localhost:8888).
2. Use o token que aparece no terminal ao iniciar o Docker Compose para acessar o ambiente do Jupyter.
3. Navegue até o diretório `work` no Jupyter e abra o notebook `atividade_pandas.ipynb`.

### Operações com Pandas para Executar

No notebook `atividade_pandas.ipynb`, siga as instruções para executar as seguintes operações:

1. **Carregar o dataset `alunos.csv`**:
   ```python
   import pandas as pd
   df = pd.read_csv('/home/jovyan/data/alunos.csv')
   ```

2. **Exibir todos os dados do dataset**:
   ```python
   display(df)
   ```

3. **Filtrar alunos com idade maior que 21 anos**:
   ```python
   df[df['idade'] > 21]
   ```

4. **Agrupar por curso e calcular a média de idade**:
   ```python
   df.groupby('curso')['idade'].mean()
   ```

---

Essas atividades fornecem uma base prática para explorar manipulação de dados tanto com SQL quanto com Pandas. Aproveite para experimentar outras consultas e operações no banco de dados e no Jupyter Notebook para aprofundar seu aprendizado.