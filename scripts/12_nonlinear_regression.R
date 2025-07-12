# Regresión No Lineal

# Librerías
library(ggplot2)

# Cargar datos
data(Orange)

# Preprocesamiento: seleccionamos un árbol para simplificar
orange1 <- subset(Orange, Tree == 1)

# Análisis: modelo logístico de crecimiento
nl_mod <- nls(circumference ~ SSlogis(age, Asym, xmid, scal), data = orange1)
summary(nl_mod)

# Visualización
age_seq <- seq(min(orange1$age), max(orange1$age), length.out = 100)
pred <- predict(nl_mod, newdata = data.frame(age = age_seq))

plot(orange1$age, orange1$circumference, pch = 16, main = "Crecimiento del árbol")
lines(age_seq, pred, col = "blue")

# Interpretación
# El modelo no lineal describe la trayectoria de crecimiento sigmoidal de la
# circunferencia del árbol con la edad.
