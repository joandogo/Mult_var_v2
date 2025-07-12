# Regresión Binomial y Multinomial

# Librerías
library(ggplot2)
library(nnet)

# --- Regresión Logística Binomial ---

data(mtcars)
mtcars$vs <- factor(mtcars$vs, labels = c("V", "En línea"))

binom_mod <- glm(vs ~ mpg + wt, data = mtcars, family = binomial)
summary(binom_mod)

# --- Regresión Logística Multinomial ---

data(iris)

multi_mod <- multinom(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris)
summary(multi_mod)

# Visualización simple de probabilidades predichas para la multinomial
iris$prob_setosa <- predict(multi_mod, type = "probs")[,"setosa"]

ggplot(iris, aes(Petal.Length, prob_setosa, color = Species)) +
  geom_point() +
  theme_minimal() +
  labs(title = "Probabilidad de ser setosa")

# Interpretación
# La parte binomial modela la probabilidad de motor en V vs en línea.
# La parte multinomial estima probabilidades para cada especie de iris.
