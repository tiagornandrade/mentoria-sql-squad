# Módulo 3: Análise Exploratória de Dados (EDA)

Neste módulo, vamos explorar a Análise Exploratória de Dados (Exploratory Data Analysis, ou EDA), uma etapa fundamental para compreender as características e padrões de um conjunto de dados antes de aprofundar a análise. A EDA ajuda a identificar tendências, padrões, possíveis erros e relações entre variáveis, orientando o caminho para análises mais profundas e estruturadas.

---

## 1. Estatísticas Descritivas e Distribuições

O primeiro passo na EDA é calcular estatísticas descritivas que fornecem uma visão geral dos dados. Essas métricas ajudam a entender a distribuição e a dispersão dos valores em cada variável.

### Estatísticas de Resumo

As estatísticas de resumo incluem métricas básicas que sintetizam as características principais dos dados, como:

- **Média**: Indica o valor central ou “médio” de uma variável.
- **Desvio Padrão**: Mede a variabilidade ou dispersão dos dados em relação à média. Valores altos indicam maior variação entre os dados.
- **Quartis**: Dividem o conjunto de dados em partes iguais, ajudando a identificar a mediana e os limites para detectar outliers.

#### Exemplo de Cálculo de Estatísticas de Resumo com Pandas
```python
import pandas as pd

# Carregar os dados
df = pd.read_csv('alunos.csv')

# Exibir estatísticas descritivas
print("Estatísticas Descritivas:")
print(df.describe())
```

Esse método `describe()` fornece uma visão geral com medidas como média, desvio padrão, mínimo, máximo e quartis para cada coluna numérica do dataset.

### Visualização de Distribuições

Entender a distribuição dos dados é essencial para identificar padrões e desvios. Duas das visualizações mais comuns para isso são os histogramas e box plots.

- **Histogramas**: Exibem a frequência de valores em intervalos definidos. São úteis para ver a forma geral da distribuição e identificar qualquer assimetria ou valores extremos.
  
  ```python
  import matplotlib.pyplot as plt

  # Histograma da idade dos alunos
  plt.hist(df['idade'], bins=10, color='skyblue', edgecolor='black')
  plt.title('Distribuição de Idade dos Alunos')
  plt.xlabel('Idade')
  plt.ylabel('Frequência')
  plt.show()
  ```

- **Box Plots**: Mostram a distribuição dos dados com base nos quartis e ajudam a identificar outliers.
  
  ```python
  # Box plot da idade dos alunos
  plt.boxplot(df['idade'])
  plt.title('Box Plot de Idade dos Alunos')
  plt.ylabel('Idade')
  plt.show()
  ```

Essas visualizações ajudam a identificar assimetrias e irregularidades nos dados, orientando as próximas etapas de limpeza e análise.

---

## 2. Identificação de Outliers e Padrões

A identificação de outliers e padrões é crucial na EDA. Outliers são valores extremos que podem influenciar as análises e podem indicar anomalias ou erros no dataset. Além disso, é importante analisar a correlação entre variáveis para entender como elas se relacionam.

### Métodos para Detecção de Outliers

Um outlier é um valor que se distancia significativamente do restante dos dados. Existem várias técnicas para detectar outliers:

- **Método do IQR (Intervalo Interquartil)**: Utiliza o intervalo entre o primeiro e o terceiro quartil para identificar valores fora do padrão.
  
  ```python
  # Calcula o IQR
  Q1 = df['idade'].quantile(0.25)
  Q3 = df['idade'].quantile(0.75)
  IQR = Q3 - Q1

  # Identifica outliers
  outliers = df[(df['idade'] < (Q1 - 1.5 * IQR)) | (df['idade'] > (Q3 + 1.5 * IQR))]
  print("Outliers na coluna 'idade':")
  print(outliers)
  ```

- **Box Plot**: Outra maneira visual de identificar outliers é com o próprio box plot, onde pontos fora das "extremidades" representam valores anômalos.

### Análise de Correlação entre Variáveis

A correlação mede a relação entre duas variáveis e indica se elas tendem a variar juntas. A análise de correlação é útil para descobrir padrões entre variáveis e é um ponto de partida para análises mais complexas, como modelos preditivos.

- **Coeficiente de Correlação de Pearson**: Avalia a relação linear entre duas variáveis, variando de -1 a 1.
  - **1**: Correlação positiva perfeita
  - **0**: Sem correlação
  - **-1**: Correlação negativa perfeita
  
  ```python
  # Matriz de correlação entre variáveis numéricas
  correlation_matrix = df.corr()
  print("Matriz de Correlação:")
  print(correlation_matrix)
  ```

#### Visualização da Correlação com Heatmap
Uma maneira comum de visualizar correlações é através de um heatmap, que destaca valores altos e baixos com cores.

```python
import seaborn as sns

# Heatmap da matriz de correlação
plt.figure(figsize=(8, 6))
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm', center=0)
plt.title('Matriz de Correlação')
plt.show()
```

Essa visualização permite identificar rapidamente quais variáveis têm relações significativas, o que pode direcionar análises futuras e ajudar a entender a estrutura dos dados.
