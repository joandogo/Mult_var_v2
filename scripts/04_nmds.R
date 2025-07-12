# Escalamiento Multidimensional No Métrico (NMDS)

# Librerías
library(vegan)
library(ggplot2)

# Cargar datos
data(dune)

# Preprocesamiento: transformación de wisconsin
dune_tra <- wisconsin(dune)

# Análisis
nmds_res <- metaMDS(dune_tra, distance = "bray", k = 2, trymax = 100)
print(nmds_res)

# Visualización
ordiplot(nmds_res, type = "text", main = "NMDS de dune")

# También con ggplot2
scores <- as.data.frame(scores(nmds_res, display="sites"))

ggplot(scores, aes(NMDS1, NMDS2)) +
  geom_point() +
  theme_minimal() +
  labs(title = "NMDS de dune")

# Interpretación
# Las distancias en el espacio NMDS representan disimilitudes ecológicas entre
# las parcelas del conjunto de datos dune.
