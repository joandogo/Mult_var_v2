# Análisis de Correlación Canónica

# Librerías
library(ggplot2)

# Cargar datos
# Utilizamos mtcars disponible en R
data(mtcars)

# Preprocesamiento
# Separamos dos conjuntos de variables
X <- scale(mtcars[, c("disp", "hp", "wt")])  # características del motor
Y <- scale(mtcars[, c("drat", "qsec", "mpg")])  # rendimiento

# Análisis
cc_res <- cancor(X, Y)
print(cc_res$cor)  # correlaciones canónicas

# Scores de las primeras variables canónicas
t_scores <- as.data.frame(cc_res$xcoef)
s_scores <- as.data.frame(cc_res$ycoef)

# Visualización de la primera dimensión
U1 <- as.matrix(X) %*% cc_res$xcoef[,1]
V1 <- as.matrix(Y) %*% cc_res$ycoef[,1]

plot(U1, V1, main = "Correlación Canónica - Primer par", xlab = "U1", ylab = "V1")
abline(lm(V1 ~ U1), col = "red")

# Interpretación
# Las correlaciones canónicas indican la asociación lineal máxima entre los dos
# grupos de variables. Valores altos sugieren relación fuerte.
