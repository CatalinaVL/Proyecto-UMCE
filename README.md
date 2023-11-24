# Proyecto-UMCE
## Proyecto de revinculación
### (VARIABLES UTILIZADAS: NOMBRE/TIPO/DESCRIPCIÓN/VALORES)
## DESDE BASE RENDIMIENTO:
-**SIT_FIN** / cadena/ Situación de promoción al cierre del año escolar/P: Promovido* R: Reprobado Y: Retirado en blanco: Sin información
-**SIT_FIN_R**/ cadena/ Situación de promoción al cierre del año escolar, con indicador de traslado P: Promovido R: Reprobado Y: Retirado T: Trasladado* en blanco: Sin información

*Promovido (Aprobado): estudiante que rinde satisfactoriamente sus evaluaciones, de acuerdo con la legislación vigente durante un año lectivo.
*Reprobado: estudiante que no rinde satisfactoriamente sus evaluaciones, de acuerdo con la legislación vigente durante un año lectivo.
*Retirado: estudiante que por retiro formal o no formal, no está en condiciones de ser evaluado
*Trasladado: estudiante que se cambió de establecimiento (o a otro curso, en el mismo establecimiento) durante el año escolar

## DESDE BASE SEP
-**PRIORITARIO_ALU**/ Numérico/ Indicador de Alumno prioritario// 0: No prioritario 1: Priotitario

-**PREFERENTE_ALU**/ Numérico/ Indicador de alumno preferente// 0:No preferente 1:Preferente

-**BEN_SEP**/Numérico/Indicador de alumno beneficiario de la SEP// 0: No beneficiario SEP 1: Beneficiario SEP *para 2015 únicamente se encuentra disponible la variable BEN_SEP

## DESDE BASE MATRICULA
-**GEN_ALU**/ Numérico/ Sexo del estudiante/ 0: Sin Información / 1: Hombre 2: Mujer

-**EDAD_ALU**: Numérico/ Edad al 30 de junio del correspondiente año escolar*
 * En caso de edades atípicas, se debe a problemas en el ingreso de la información en el Sistema de Información General de Estudiantes 
 (SIGE) del nivel de enseñanza correspondiente. A contar del año 2016, los casos con edades MISSING corresponden a casos no validados 
 con Registro Civil que originalmente tenían 99 años o más; con matrícula en los niveles Parvularia, Básica niños y jóvenes, Media HC
 niños y jóvenes o Media TP niños y jóvenes que originalmente tenían 25 años o más, o con matrícula en niveles distintos a Parvularia 
 y Educación Especial y que originalmente tenían 0 años.

-**AGNO**/ Numérico/ Año escolar

-**RBD**/ Numérico/ Rol base de datos del establecimiento

-**NOM_RBD** / Numérico / Número del establecimiento

-**COD_DEPE**/ Numérico/ Código de Dependencia del Establecimiento:
1: Corporación Municipal
2: Municipal DAEM
3: Particular Subvencionado
4: Particular Pagado (o no subvencionado)
5: Corporación de Administración Delegada (DL 3166)
6: Servicio Local de Educación

-**COD_DEPE2** / Numérico / Código de Dependencia del Establecimiento (agrupado)
1: Municipal
2: Particular Subvencionado
3: Particular Pagado (o no subvencionado)
4: Corporación de Administración Delegada (DL 3166)
5: Servicio Local de Educación

-**COD_ENSE2**/ Numérico/ Niveles de enseñanza agrupados:
1: Educación Parvularia.
2: Enseñanza Básica Niños.
3: Educación Básica Adultos.
4: Educación Especial
5: Enseñanza Media Humanístico-Científica Jóvenes.
6: Educación Media Humanístico-Científica Adultos.
7: Enseñanza Media Técnico Profesional y Artística, Jóvenes.
8: Educación Media Técnico Profesional y Artística, Adultos.

-**COD_ENSE3** / Numérico/ Niveles de enseñanza con educación especial reasignado:
1: Educación Parvularia.
2: Enseñanza Básica Niños.
3: Educación Básica Adultos.
4: Enseñanza Media Humanístico-Científica Jóvenes.
5: Educación Media Humanístico-Científica Adultos.
6: Enseñanza Media Técnico Profesional y Artística, Jóvenes.
7: Educación Media Técnico Profesional y Artística, Adultos.


-**COD_JOR**/ Numérico/ Jornada en la que asiste a clases:
1: Mañana
2: Tarde
3: Mañana y tarde
4: Vespertina / Nocturna
99: Sin Información

-**COD_REG_RBD** / Código de región en que se ubica el establecimiento/
1:Región de Tarapacá
2:Región de Antofagasta
3:Región de Atacama
4:Región de Coquimbo
5:Región de Valparaíso
6:Región del Libertador Gral. Bernardo O’Higgins
7:Región del Maule
8:Región del Biobío
9:Región de la Araucanía
10:Región de Los Lagos
11:Región de Aysén del Gral. Carlos Ibáñez del Campo
12:Región de Magallanes y de la Antártica Chilena
13:Región Metropolitana de Santiago
14:Región de Los Ríos
15:Región de Arica y Parinacota
16: Región de Ñuble (VIGENTE DESDE 2018)

-**COD_COM_RBD**/ Numérico/ Código oficiaL* comuna en que se ubica el establecimiento: *Corresponde a los códigos geográficos oficiales establecidos por la Subsecretaría de Desarrollo Regional (SUBDERE)

-**NOM_COM_RBD**/ Cadena/ Nombre de la comuna en que se ubica el establecimiento

-**RURAL_RBD**/ Numérico/ Índice de ruralidad del establecimiento/ 0: Urbano 1: Rural

## Selección y cambio de nombres en variables en R:
ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU, AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, CURSO= COD_GRADO, COD_DEPE2, NIVEL = COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR, REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)

