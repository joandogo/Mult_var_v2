# Escalamiento Métrico Clásico (MDS)

**Script:** `05_mds.R`

Ejemplo de MDS utilizando las variables de `mtcars`.

## Dependencias
- ggplot2

## Ejecución
```bash
Rscript scripts/05_mds.R
```
El script calcula la matriz de distancias euclidianas y dibuja los dos primeros ejes del MDS.

## Datos
Las variables de `mtcars` se escalan previamente para evitar sesgos por magnitudes diferentes.

## Resultado
Los puntos cercanos en el plano representan autos con características similares.
