# PERMANOVA

**Script:** `09_permanova.R`

Ejemplo de MANOVA por permutaciones con el dataset `dune` y las variables ambientales `dune.env`.

## Dependencias
- vegan

## Ejecución
```bash
Rscript scripts/09_permanova.R
```
Se calcula la distancia Bray-Curtis y se realizan 999 permutaciones para evaluar diferencias según `Management`.

## Datos
`dune` contiene abundancias de especies mientras que `dune.env` aporta factores ambientales.

## Resultado
Un p-valor bajo sugiere diferencias significativas en la composición de especies según el manejo.
