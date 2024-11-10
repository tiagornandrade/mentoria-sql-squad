# Módulo 2: Modelagem de Dados Analíticos

Neste módulo, vamos explorar a **modelagem de dados analíticos**, uma prática essencial para organizar os dados de forma que eles possam ser facilmente consultados e analisados. A modelagem adequada facilita a criação de relatórios e dashboards eficientes, além de melhorar o desempenho das consultas em grandes volumes de dados.

---

## 1. Estruturação de Dados para Análise

A estruturação de dados para análise é a base de uma modelagem eficiente, permitindo que os dados sejam consultados de maneira rápida e organizada. Essa estrutura envolve o uso de **fatos** e **dimensões** para organizar as informações.

### Fatos e Dimensões: Conceito e Estruturação para Facilitar Consultas Analíticas

- **Fatos**: São dados numéricos, geralmente resultantes de transações, eventos ou métricas que queremos analisar. As tabelas de fato contêm medidas, como vendas, quantidade ou valor, que são agregadas e analisadas.
- **Dimensões**: Fornecem o contexto para os dados de fato, armazenando informações descritivas que ajudam a segmentar e entender as métricas. Por exemplo, as dimensões podem ser clientes, produtos, tempo ou localização.

Essa separação entre fatos e dimensões permite criar estruturas de dados que otimizam a análise e suportam consultas agregadas.

### Esquema Estrela e Floco de Neve: Padrões de Modelagem para Desempenho

Para modelar dados analíticos, dois padrões comuns são usados: **esquema estrela** e **esquema floco de neve**. Esses esquemas organizam dados de fato e dimensões de maneiras diferentes para atender a necessidades específicas de desempenho.

- **Esquema Estrela**: A tabela de fato está no centro e é ligada diretamente às tabelas de dimensões. Este modelo simplifica as consultas, pois minimiza o número de joins necessários. É ideal para casos onde a performance de consultas é prioritária.
  
  - **Exemplo**: Uma tabela de “Fatos de Vendas” conectada a dimensões como “Produto”, “Cliente” e “Data”.

- **Esquema Floco de Neve**: Similar ao esquema estrela, mas com dimensões normalizadas em várias tabelas, o que reduz a redundância. Embora seja mais complexo, esse modelo pode ser útil para reduzir o espaço de armazenamento e melhorar a organização dos dados.
  
  - **Exemplo**: A dimensão “Localização” pode ser dividida em “Cidade”, “Estado” e “País”.

---

## 2. Modelos Dimensionais e Uso de Tabelas de Agregação

Os modelos dimensionais permitem organizar os dados para que sejam facilmente acessíveis e intuitivos para análises. Para otimizar o desempenho de consultas complexas, **tabelas de agregação** são frequentemente usadas.

### Criação de Tabelas Dimensionais e de Fato para Suportar Análises

- **Tabelas de Fato**: Armazenam as medidas que serão analisadas, como valores de vendas, quantidade de produtos vendidos e lucros. Essas tabelas são conectadas às dimensões, permitindo a análise dos dados em diferentes perspectivas.

  ```sql
  CREATE TABLE fato_vendas (
    venda_id INT,
    produto_id INT,
    cliente_id INT,
    data_id INT,
    quantidade INT,
    valor DECIMAL(10, 2)
  );
  ```

- **Tabelas de Dimensão**: Contêm os atributos que ajudam a segmentar as análises, como nomes de produtos, categorias, datas e localização. Essas tabelas facilitam consultas baseadas em filtros e agrupamentos.

  ```sql
  CREATE TABLE dim_produto (
    produto_id INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    fornecedor VARCHAR(50)
  );
  ```

### Uso de Tabelas de Agregação para Otimizar Consultas Complexas

As tabelas de agregação contêm dados resumidos e são usadas para melhorar o desempenho de consultas que demandariam cálculos complexos e repetitivos nas tabelas de fato. Ao pré-calcular os dados, o tempo de resposta das consultas diminui significativamente.

- **Exemplo de Tabela de Agregação**: Uma tabela que armazena a soma das vendas por mês e por categoria, permitindo gerar relatórios mensais de maneira mais rápida.

  ```sql
  CREATE TABLE agregacao_vendas_mensais (
    mes INT,
    categoria VARCHAR(50),
    total_vendas DECIMAL(10, 2)
  );
  ```

---

## 3. Normalização e Desnormalização para Análise

A modelagem de dados pode seguir práticas de **normalização** ou **desnormalização**, dependendo das necessidades do sistema. Cada abordagem tem suas vantagens e desvantagens, e a escolha entre elas depende de fatores como o volume de dados, o tipo de análise e o desempenho esperado.

### Normalização para Reduzir Redundância e Facilitar Manutenção

A normalização é o processo de dividir dados em várias tabelas para reduzir redundâncias e melhorar a consistência. Em um ambiente analítico, a normalização pode ajudar a garantir a integridade dos dados, embora possa tornar as consultas mais complexas devido à necessidade de múltiplos joins.

- **Exemplo de Normalização**: Separar a tabela de “Vendas” em várias tabelas, como “Produtos”, “Clientes” e “Vendas”, reduzindo redundâncias.

  ```sql
  CREATE TABLE vendas (
    venda_id INT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade INT,
    valor DECIMAL(10, 2)
  );
  ```

### Desnormalização para Otimizar Consultas Frequentes e Relatórios

A desnormalização combina dados em uma única tabela, o que pode facilitar o acesso e a análise dos dados. Embora aumente a redundância, essa abordagem é vantajosa quando a prioridade é o desempenho, como em consultas frequentes e geração de relatórios rápidos.

- **Exemplo de Desnormalização**: Uma tabela que inclui informações de clientes, produtos e vendas em uma única estrutura, facilitando a consulta direta para relatórios.

  ```sql
  CREATE TABLE vendas_desnormalizada (
    venda_id INT,
    nome_cliente VARCHAR(100),
    nome_produto VARCHAR(100),
    quantidade INT,
    valor DECIMAL(10, 2)
  );
  ```

---

Este módulo fornece uma visão detalhada das práticas e técnicas de modelagem de dados analíticos. Com essas habilidades, você será capaz de estruturar os dados de forma eficiente, otimizando o desempenho das consultas e garantindo que as informações estejam organizadas para atender às necessidades analíticas da empresa.