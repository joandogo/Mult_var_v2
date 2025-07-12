# Análisis de Redundancia (RDA)

**Script:** `07_rda.R`

Ejemplo de RDA con los datasets `varespec` y `varechem` del paquete *vegan*.

## Dependencias
- vegan

## Ejecución
```bash
Rscript scripts/07_rda.R
```
El script estandariza las abundancias con Hellinger y genera un gráfico de ordenación.

## Datos
`varespec` contiene abundancia de especies y `varechem` variables ambientales.

## Resultado
Permite evaluar qué tanto la composición de especies se explica por las variables ambientales medidas.
