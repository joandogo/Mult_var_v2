# Análisis de Correspondencias Canónicas (CCA)

**Script:** `06_cca.R`

Se emplea el dataset `dune` y sus variables ambientales `dune.env` del paquete *vegan* para realizar un CCA.

## Dependencias
- vegan

## Ejecución
```bash
Rscript scripts/06_cca.R
```
El script transforma las especies con el método de Hellinger y produce un ordograma CCA.

## Datos
`dune` contiene abundancias de especies y `dune.env` variables ambientales asociadas.

## Resultado
El gráfico muestra la relación entre especies y variables ambientales.
