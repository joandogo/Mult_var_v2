# Modelos Lineales Generalizados Mixtos (GLMM)

# Librerías
library(lme4)

# Cargar datos
data(cbpp)

# Preprocesamiento: ninguno especial

# Análisis: modelo binomial con efectos aleatorios por rebaño
cbpp$obs <- cbind(cbpp$incidence, cbpp$size - cbpp$incidence)

glmm_mod <- glmer(obs ~ period + (1 | herd), data = cbpp, family = binomial)
summary(glmm_mod)

# Interpretación
# El efecto aleatorio permite modelar la variabilidad entre rebaños en la
# incidencia de la enfermedad.
