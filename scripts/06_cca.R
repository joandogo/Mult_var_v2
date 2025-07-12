# Análisis de Correspondencias Canónicas (CCA)

# Librerías
library(vegan)

# Cargar datos
data(dune)
data(dune.env)

# Preprocesamiento: transformación de Hellinger
spec <- decostand(dune, method = "hellinger")

# Análisis
cca_res <- cca(spec ~ ., data = dune.env)
print(summary(cca_res))

# Visualización
plot(cca_res, main = "CCA de dune")

# Interpretación
# El ordograma muestra cómo las especies se relacionan con las variables
# ambientales registradas en dune.env.
