# Regresión Logística (Binaria)

# Librerías
library(ggplot2)

# Cargar datos
data(mtcars)

# Preprocesamiento: convertir am a factor
mtcars$am <- factor(mtcars$am, labels = c("Automatico", "Manual"))

# Análisis: modelo logístico para predecir am usando peso y potencia
logit_mod <- glm(am ~ wt + hp, data = mtcars, family = binomial)
summary(logit_mod)

# Visualización: efecto de peso
mtcars$prob_manual <- predict(logit_mod, type = "response")

ggplot(mtcars, aes(wt, prob_manual, color = am)) +
  geom_point() +
  theme_minimal() +
  labs(title = "Probabilidad de transmisión manual", y = "Probabilidad")

# Interpretación
# Los coeficientes del modelo indican cómo el peso y la potencia afectan la
# probabilidad de que un auto sea manual.
