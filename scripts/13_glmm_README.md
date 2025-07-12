# Modelos Lineales Generalizados Mixtos (GLMM)

**Script:** `13_glmm.R`

Se ajusta un modelo binomial con efectos aleatorios usando el dataset `cbpp` del paquete *lme4*.

## Dependencias
- lme4

## Ejecución
```bash
Rscript scripts/13_glmm.R
```
El script estima la incidencia de la enfermedad considerando variabilidad entre rebaños.

## Datos
`cbpp` contiene datos de casos de enfermedad en diferentes periodos y rebaños.

## Resultado
El modelo permite evaluar el efecto del periodo y la variabilidad entre rebaños en la incidencia.
