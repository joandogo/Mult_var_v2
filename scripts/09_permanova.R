# PERMANOVA - MANOVA por permutaciones

# Librerías
library(vegan)

# Cargar datos
data(dune)
data(dune.env)

# Preprocesamiento: transformación de Hellinger
spec <- decostand(dune, method = "hellinger")

# Análisis: adonis2 con 999 permutaciones
dune.dist <- vegdist(spec, method = "bray")
perma_res <- adonis2(dune.dist ~ Management, data = dune.env, permutations = 999)
print(perma_res)

# Interpretación
# Un p-valor bajo indica diferencias significativas en la composición de especies
# según el tipo de manejo (Management).
