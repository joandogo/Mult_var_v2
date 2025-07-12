# Análisis de Redundancia (RDA)

# Librerías
library(vegan)

# Cargar datos
data(varespec)
data(varechem)

# Preprocesamiento: estandarización
spec <- decostand(varespec, method = "hellinger")

# Análisis
rda_res <- rda(spec ~ ., data = varechem)
print(summary(rda_res))

# Visualización
plot(rda_res, main = "RDA de varespec")

# Interpretación
# Este análisis permite evaluar cómo la variación en la composición de especies
# se explica por las variables ambientales en varechem.
