# MANOVA - Análisis Multivariado de la Varianza

# Librerías
library(ggplot2)

# Cargar datos
data(iris)

# Preprocesamiento: ninguna transformación necesaria

# Análisis
manova_res <- manova(cbind(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) ~ Species, data = iris)
summary(manova_res)

# Visualización
# Graficamos los centroids de cada especie en las dos primeras variables
centroids <- aggregate(cbind(Sepal.Length, Sepal.Width) ~ Species, data = iris, mean)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(alpha = 0.6) +
  geom_point(data = centroids, aes(Sepal.Length, Sepal.Width, color = Species), size = 4, shape = 18) +
  theme_minimal() +
  labs(title = "MANOVA iris")

# Interpretación
# El test MANOVA evalúa diferencias multivariadas entre especies. Un p-valor
# significativo indica que al menos una especie difiere en el conjunto de
# variables consideradas.
