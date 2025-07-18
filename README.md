# Análisis Multivariado con R

Este repositorio contiene una colección de scripts en R que ilustran distintos
métodos de análisis estadístico multivariado. Cada script utiliza una base de
 datos disponible públicamente en R o en paquetes populares como **vegan**.

Las técnicas incluidas son:

A. Análisis Exploratorio Multivariado
 1. Análisis de Componentes Principales (PCA)
 2. Correlación Canónica
 3. Agrupamiento Jerárquico
B. Métodos de Ordenación y Escalamiento 
 5. Escalamiento Multidimensional No Métrico (NMDS)
 6. Escalamiento Métrico Clásico (MDS)
C. Análisis de Relaciones Multivariadas
 8. Análisis de Correspondencias Canónicas (CCA)
 9. Análisis de Redundancia (RDA)
 10. MANOVA
 11. PERMANOVA
D. Modelos de Regresión Multivariada 
 13. Regresión Logística
 14. Regresiones Binomial y Multinomial
 15. Regresión No Lineal
 16. Modelos Lineales Generalizados Mixtos (GLMM)

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
