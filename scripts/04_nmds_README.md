# Escalamiento Multidimensional No Métrico (NMDS)

**Script:** `04_nmds.R`

Se aplica NMDS al dataset `dune` del paquete *vegan* para representar disimilitudes ecológicas.

## Dependencias
- vegan
- ggplot2

## Ejecución
```bash
Rscript scripts/04_nmds.R
```
El script realiza la transformación de Wisconsin, calcula NMDS y muestra un diagrama de ordenación.

## Datos
El conjunto `dune` contiene datos de abundancia de especies en parcelas.

## Resultado
El espacio NMDS refleja distancias de Bray-Curtis entre las parcelas.
