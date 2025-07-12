# Análisis de Correlación Canónica (CCA)

**Script:** `02_can_cor.R`

Utiliza el dataset `mtcars` para explorar la relación entre variables de motor y de rendimiento mediante correlación canónica.

## Dependencias
- ggplot2

## Ejecución
```bash
Rscript scripts/02_can_cor.R
```
El script calcula las correlaciones canónicas y grafica el primer par de variables canónicas.

## Datos
Se escalan las variables seleccionadas de `mtcars` para formar dos conjuntos: características del motor y rendimiento.

## Resultado
Las correlaciones canónicas indican la fuerza de asociación lineal entre los dos grupos de variables.
