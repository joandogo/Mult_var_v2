# Agrupamiento Jerárquico

**Script:** `03_cluster.R`

Realiza un análisis de clusters jerárquico con el dataset `USArrests`.

## Dependencias
- ggplot2

## Ejecución
```bash
Rscript scripts/03_cluster.R
```
Se genera un dendrograma que muestra las similitudes entre estados de EE.UU.

## Datos
Las variables de `USArrests` se escalan antes de calcular distancias euclidianas y aplicar el método de enlace completo.

## Resultado
El dendrograma permite identificar grupos de estados con patrones de arrestos similares.
