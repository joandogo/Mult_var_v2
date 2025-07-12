# Análisis de Componentes Principales (PCA)

# Librerías
library(ggplot2)

# Cargar datos
# Usamos el conjunto de datos iris disponible en R
data(iris)

# Preprocesamiento: solo variables numéricas y escalado
iris_num <- scale(iris[, 1:4])

# Análisis
pca_res <- prcomp(iris_num, center = TRUE, scale. = TRUE)
print(summary(pca_res))

# Visualización
# Biplot de los dos primeros componentes
biplot(pca_res, main = "Biplot PCA")

# También con ggplot2 para un scatter de los componentes
pca_df <- as.data.frame(pca_res$x)
pca_df$Species <- iris$Species

ggplot(pca_df, aes(PC1, PC2, color = Species)) +
  geom_point(size = 2) +
  theme_minimal() +
  labs(title = "PCA de iris", x = "PC1", y = "PC2")

# Interpretación
# En general las dos primeras componentes explican gran parte de la variabilidad
# y permiten diferenciar las especies de iris.
