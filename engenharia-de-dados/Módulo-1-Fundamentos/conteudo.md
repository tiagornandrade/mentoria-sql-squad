# Módulo 1: Fundamentos de Engenharia de Dados

Neste módulo, vamos explorar os fundamentos da **Engenharia de Dados**. A engenharia de dados é responsável pela construção e manutenção de pipelines de dados que suportam a coleta, transformação e armazenamento de grandes volumes de informações, fundamentais para análises e tomadas de decisão.

---

## 1. Introdução à Arquitetura de Dados

Para construir pipelines eficientes, é essencial compreender a arquitetura de dados e os principais métodos de processamento, como **ETL** e **ELT**, além de entender as diferenças entre **Data Lakes** e **Data Warehouses**.

### Conceitos de ETL (Extract, Transform, Load) e ELT (Extract, Load, Transform)

- **ETL (Extract, Transform, Load)**: Processo onde os dados são extraídos, transformados e, finalmente, carregados em um sistema de armazenamento. Esse modelo é útil para transformar dados antes de armazená-los, garantindo que estejam prontos para análise.
  
- **ELT (Extract, Load, Transform)**: Processo no qual os dados são extraídos e carregados diretamente no sistema de armazenamento (Data Lake ou Data Warehouse), onde as transformações ocorrem. Esse modelo é mais comum em arquiteturas modernas de dados em nuvem, pois permite trabalhar com grandes volumes de dados sem um pré-processamento.

### Diferença entre Data Lake e Data Warehouse

- **Data Lake**: Armazena dados em seu formato bruto (não processado). É ideal para dados não estruturados e semi-estruturados, como logs, imagens e vídeos. Permite uma análise flexível e rápida para diversos tipos de dados.

- **Data Warehouse**: Armazena dados processados e organizados, prontos para análise. É ideal para dados estruturados e consultas complexas e possui performance otimizada para relatórios e BI (Business Intelligence).

### Arquitetura de Dados Moderna e Camadas de Dados (Raw, Trusted, Refined)

Uma arquitetura de dados moderna utiliza uma abordagem de camadas para organizar os dados em diferentes estágios de processamento:

- **Raw**: Dados em seu estado bruto, extraídos diretamente das fontes, sem transformações.
- **Trusted**: Dados que passaram por validações básicas e estão em um formato mais organizado e confiável.
- **Refined**: Dados transformados, agregados e prontos para análise, podendo ser utilizados para relatórios e dashboards.

---

## 2. Visão Geral de Pipelines de Dados

Um pipeline de dados é uma série de etapas que permite mover dados de uma fonte para um destino, realizando transformações necessárias ao longo do caminho. Ele é essencial para qualquer arquitetura de dados moderna.

### Definição de Pipeline de Dados e Suas Principais Etapas

Um pipeline de dados geralmente inclui as seguintes etapas:

- **Ingestão**: Coleta de dados de uma ou várias fontes.
- **Processamento**: Aplicação de transformações, como limpeza e agregação dos dados.
- **Transformação**: Conversão dos dados para um formato específico ou aplicação de cálculos e lógica de negócio.
- **Armazenamento**: Salvamento dos dados transformados em um sistema de armazenamento, como um Data Warehouse ou Data Lake.

### Componentes de um Pipeline e Exemplos de Casos de Uso

- **Ingestão**: Pode ocorrer em tempo real, coletando dados de eventos via streaming, ou em batch, processando grandes volumes periodicamente.
- **Processamento e Transformação**: Utiliza ferramentas para limpeza e normalização de dados antes de armazená-los.
- **Armazenamento**: Os dados transformados são armazenados em um sistema adequado para consultas e análises.

#### Exemplo de Caso de Uso

Um exemplo de pipeline seria um sistema de ecommerce que ingere dados de transações em tempo real, os transforma para identificar tendências de compra e armazena os resultados em um Data Warehouse para análise de relatórios de vendas.

---

## 3. Ferramentas e Tecnologias Principais

Para construir e operar pipelines de dados robustos, é essencial dominar ferramentas e frameworks que suportam o processamento e armazenamento de grandes volumes de dados.

### Apache Kafka: Plataforma de Streaming de Dados

- **Apache Kafka** é uma plataforma de streaming distribuída que permite a ingestão de dados em tempo real. Ele é amplamente utilizado para construir pipelines que processam dados em fluxo contínuo, ideal para eventos como logs de aplicativos e transações.
  
### Apache Spark: Processamento em Larga Escala

- **Apache Spark** é um motor de processamento que executa transformações em grandes volumes de dados de forma paralela e distribuída. Spark é uma escolha popular para ETL em escala, pois suporta processamento batch e streaming em tempo real.

### Apache Hadoop: Processamento e Armazenamento Distribuído

- **Apache Hadoop** é um framework que facilita o processamento e armazenamento distribuído de grandes conjuntos de dados. Embora o Spark seja mais rápido para processamento, Hadoop continua sendo uma tecnologia base importante para armazenamento de dados em clusters distribuídos.

---

## 4. Conceitos de Escalabilidade, Latência e Consistência de Dados

Para garantir que os pipelines de dados suportem o crescimento e continuem a operar de maneira eficiente, é essencial compreender conceitos de escalabilidade, latência e consistência.

### Definição e Importância da Escalabilidade de Pipelines

- **Escalabilidade**: Refere-se à capacidade de um sistema de aumentar (ou diminuir) sua capacidade de processamento conforme necessário. Um pipeline escalável consegue lidar com o aumento de volume de dados sem perda de performance.

### Latência em Pipelines de Dados

- **Latência**: Tempo que os dados levam para serem processados e disponibilizados. Em pipelines em tempo real, a latência deve ser baixa para que os dados estejam rapidamente disponíveis para análise.

### Consistência de Dados e os Desafios de Mantê-la em Grandes Volumes

- **Consistência**: Refere-se à integridade e precisão dos dados ao longo de todo o pipeline. Em arquiteturas distribuídas, garantir a consistência dos dados pode ser desafiador devido a falhas de rede e outros fatores. É essencial planejar como lidar com inconsistências para assegurar a confiança nos dados.
