# Análisis Multivariado con R

Este repositorio contiene una colección de scripts en R que ilustran distintos
métodos de análisis estadístico multivariado. Cada script utiliza una base de
 datos disponible públicamente en R o en paquetes populares como **vegan**.

Las técnicas incluidas son:

1. Análisis de Componentes Principales (PCA)
2. Correlación Canónica
3. Agrupamiento Jerárquico
4. Escalamiento Multidimensional No Métrico (NMDS)
5. Escalamiento Métrico Clásico (MDS)
6. Análisis de Correspondencias Canónicas (CCA)
7. Análisis de Redundancia (RDA)
8. MANOVA
9. PERMANOVA
10. Regresión Logística
11. Regresiones Binomial y Multinomial
12. Regresión No Lineal
13. Modelos Lineales Generalizados Mixtos (GLMM)

Cada análisis se encuentra en un archivo independiente dentro del directorio
`scripts/` junto con un README específico que describe el conjunto de datos
utilizado, los pasos principales del código y una breve interpretación de los
resultados.

Los datasets empleados incluyen `iris`, `mtcars`, `vegan::dune` y otros que se encuentran de forma predeterminada en R. Esto facilita la reproducibilidad de los ejemplos sin necesidad de buscar datos externos.
Para ejecutar cualquiera de los scripts basta con tener instaladas las
dependencias indicadas en los README individuales y ejecutar:

```bash
Rscript scripts/nombre_del_script.R
```

Este repositorio sirve como guía introductoria para quienes deseen explorar
diferentes métodos multivariados en R usando datos accesibles.
