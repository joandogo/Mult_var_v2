# Regresión Logística

**Script:** `10_logistic_regression.R`

Modelo logístico para predecir el tipo de transmisión (`am`) en `mtcars` a partir del peso y la potencia del vehículo.

## Dependencias
- ggplot2

## Ejecución
```bash
Rscript scripts/10_logistic_regression.R
```
Se ajusta el modelo y se grafica la probabilidad de transmisión manual frente al peso del auto.

## Datos
`mtcars` transforma `am` en factor con niveles Automático y Manual.

## Resultado
Los coeficientes indican cómo el peso y la potencia influyen en la probabilidad de que un auto sea manual.
