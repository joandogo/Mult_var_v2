# Escalamiento Métrico Clásico (MDS)

# Librerías
library(ggplot2)

# Cargar datos
# Utilizamos la matriz de distancias de mtcars

data(mtcars)

# Preprocesamiento: escalado de variables
mtcars_scaled <- scale(mtcars)

# Distancia euclidiana y MDS
mtcars_dist <- dist(mtcars_scaled)
mds_res <- cmdscale(mtcars_dist, k = 2)

# Visualización
mds_df <- as.data.frame(mds_res)
colnames(mds_df) <- c("Dim1", "Dim2")

ggplot(mds_df, aes(Dim1, Dim2)) +
  geom_point() +
  theme_minimal() +
  labs(title = "MDS de mtcars")

# Interpretación
# Los puntos cercanos en el diagrama representan autos con características
# similares en el espacio original de variables.
