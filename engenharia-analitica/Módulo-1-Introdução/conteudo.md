# Módulo 1: Introdução à Engenharia Analítica

Neste módulo, vamos explorar a **engenharia analítica**, um campo essencial para transformar dados em insights valiosos para o negócio. A engenharia analítica envolve a modelagem de dados, otimização de consultas e criação de dashboards que facilitam a tomada de decisões com base em dados. Aqui, vamos diferenciar as funções da engenharia analítica e da engenharia de dados, além de apresentar a arquitetura de sistemas analíticos e as principais ferramentas usadas na área.

---

## 1. Diferenças entre Engenharia de Dados e Engenharia Analítica

Embora ambas as disciplinas trabalhem com dados, a engenharia de dados e a engenharia analítica têm focos e objetivos distintos.

### Engenharia de Dados

A **engenharia de dados** se concentra em garantir que os dados estejam disponíveis e acessíveis para análise. Suas responsabilidades principais incluem:

- **Ingestão de Dados**: Captura de dados de várias fontes e integração em sistemas de armazenamento.
- **Transformação e Limpeza de Dados**: Processamento e transformação de dados para garantir qualidade e consistência.
- **Armazenamento de Dados**: Estruturação e armazenamento em Data Lakes e Data Warehouses, tornando os dados acessíveis para análises posteriores.

### Engenharia Analítica

A **engenharia analítica** foca no uso dos dados disponíveis para criar modelos e estruturas que apoiem a análise e a criação de insights. As principais responsabilidades incluem:

- **Modelagem de Dados para Análise**: Estruturação de dados em modelos analíticos (como esquemas estrela e floco de neve) para facilitar consultas rápidas.
- **Otimização de Consultas**: Melhorias em consultas SQL para acelerar a resposta e reduzir custos de processamento.
- **Criação de Dashboards e KPIs**: Desenvolvimento de relatórios e dashboards que resumem métricas importantes para o negócio, permitindo a visualização de KPIs e insights.

---

## 2. Arquitetura de Sistemas Analíticos e Camadas de Dados

A arquitetura de um sistema analítico é dividida em camadas, que representam diferentes estágios de processamento e refinamento dos dados. Essas camadas ajudam a organizar e estruturar os dados para análise.

### Estrutura de Camadas de Dados (Raw, Trusted, Refined)

- **Camada Raw (Bruta)**: Contém os dados em seu formato original, sem transformações. É útil para arquivamento e para casos em que os dados precisam ser reprocessados. Esses dados são armazenados com baixa estruturação, normalmente em Data Lakes.

- **Camada Trusted (Confiável)**: Os dados são validados, limpos e estruturados, estando prontos para uso em análises. Aqui, os dados passam por transformações básicas, como filtragem e padronização.

- **Camada Refined (Refinada)**: Dados altamente processados, prontos para análises complexas e geração de relatórios. Essa camada pode conter dados agregados, calculados e modelados para atender a necessidades específicas de análise.

### Conceitos de Armazenamento e Otimização para Análise

Os dados em um sistema analítico são armazenados de forma a facilitar a recuperação e análise, e a escolha do armazenamento depende do tipo de dados e da necessidade de performance:

- **Data Lakes**: Utilizados para armazenar grandes volumes de dados não estruturados e semi-estruturados em seu formato original. Exemplos incluem HDFS (Hadoop Distributed File System) e Amazon S3. Data Lakes são ideais para armazenamento de baixo custo e flexível, especialmente para dados brutos.

- **Data Warehouses**: Repositórios de dados estruturados e preparados para análise. São otimizados para consultas SQL e usados para relatórios e BI. Exemplos incluem Google BigQuery e Amazon Redshift, ambos com suporte para consultas complexas e escalabilidade para grandes volumes de dados.

---

## 3. Principais Ferramentas e Linguagens para Análise Avançada

Para suportar a análise de dados, a engenharia analítica utiliza ferramentas específicas para consultas, visualização e geração de insights.

### SQL para Consultas Avançadas e Análise de Dados

**SQL** é a linguagem padrão para consulta de dados em bancos relacionais e Data Warehouses. A engenharia analítica requer habilidades avançadas em SQL para otimizar consultas, realizar agregações complexas e criar estruturas que suportem a análise eficiente dos dados.

- **Consultas Complexas**: Incluem joins, agregações, subconsultas e janelas (window functions) para calcular métricas complexas.
- **Otimização de Consultas**: Técnicas de particionamento, clustering e uso de índices para melhorar a performance de consultas em grandes volumes de dados.

```sql
-- Exemplo de consulta SQL para calcular a média de vendas por categoria
SELECT categoria, AVG(valor_venda) AS media_vendas
FROM vendas
GROUP BY categoria;
```

### Ferramentas de BI: Power BI, Tableau, Looker

As ferramentas de BI (Business Intelligence) são essenciais para transformar dados em visualizações e relatórios que suportem a tomada de decisão. Elas oferecem interfaces visuais e permitem criar dashboards interativos para monitorar KPIs e tendências.

- **Power BI**: Uma ferramenta da Microsoft que integra bem com o ecossistema do Office e é amplamente usada para criação de dashboards e relatórios interativos. Sua acessibilidade e flexibilidade o tornam uma escolha popular para empresas de todos os tamanhos.

- **Tableau**: Conhecido por sua capacidade de visualização avançada, Tableau permite criar dashboards dinâmicos e altamente personalizáveis. É uma ferramenta de BI focada em facilitar a análise visual dos dados, com uma ampla gama de opções gráficas.

- **Looker**: Ferramenta de BI baseada na nuvem, que permite integrar dados de várias fontes e criar visualizações customizadas. Looker é focado em dados centralizados e oferece uma linguagem própria, chamada LookML, para modelagem de dados.

Cada uma dessas ferramentas facilita a criação de dashboards e relatórios que transformam dados brutos em insights acionáveis, permitindo aos stakeholders monitorar KPIs e identificar oportunidades de melhoria.

---

Este módulo fornece as bases para entender o papel da engenharia analítica, a estrutura de sistemas analíticos e as ferramentas que apoiam análises avançadas. Com esses conhecimentos, você estará preparado para projetar e implementar sistemas que suportem a visualização e análise de dados de forma eficiente e escalável, conectando dados a decisões.