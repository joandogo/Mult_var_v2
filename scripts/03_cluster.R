# Análisis de Clusters - Agrupamiento jerárquico

# Librerías
library(ggplot2)

# Cargar datos
# Dataset USArrests disponible en R
data(USArrests)

# Preprocesamiento: escalado de variables
usarrests_scaled <- scale(USArrests)

# Análisis: distancia euclidiana y método completo
hc <- hclust(dist(usarrests_scaled), method = "complete")

# Visualización
plot(hc, main = "Dendrograma de USArrests", xlab = "Estados", sub = "")

# Interpretación
# El dendrograma permite identificar grupos de estados con patrones similares de
# arrestos por tipo de delito.
