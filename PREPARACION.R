install.packages("data.table")
library("pacman")
pacman::p_load("dplyr", "ggplot2", "readr", "readxl", "data.table") 



#CARGAR BASES -------------------------------------------------------------
MATRICULA2007 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2007.csv")
MATRICULA2008 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2008.csv")
MATRICULA2009 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2009.csv")
MATRICULA2010 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2010.csv")
MATRICULA2011 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2011.csv")
MATRICULA2012 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2012.csv")
MATRICULA2013 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2013.csv")
MATRICULA2014 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2014.csv")

# MATRICULA----
MATRICULA2015 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2015.csv")
MATRICULA2016 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2016.csv")
MATRICULA2017 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2017.csv")
MATRICULA2018 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2018.csv")
MATRICULA2019 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2019.csv")
MATRICULA2020 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2020.csv")
MATRICULA2021 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2021.csv")
MATRICULA2022 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2022.csv")
MATRICULA2023 <- fread("C:/Users/cata_/Documents/UMCE2/MATRICULA/MATRICULA2023.csv")


# SEP----
SEP2015 <- fread("C:/Users/cata_/Documents/UMCE2/SEP/SEP2015.csv") 
SEP2016 <- fread("C:/Users/cata_/Documents/UMCE2/SEP/SEP2016.csv") 
SEP2017 <- fread("C:/Users/cata_/Documents/UMCE2/SEP/SEP2017.csv") 
SEP2018 <- fread("C:/Users/cata_/Documents/UMCE2/SEP/SEP2018.csv") 
SEP2019 <- fread("C:/Users/cata_/Documents/UMCE2/SEP/SEP2019.csv") 
SEP2020 <- fread("C:/Users/cata_/Documents/UMCE2/SEP/SEP2020.csv") 
SEP2021 <- fread("C:/Users/cata_/Documents/UMCE2/SEP/SEP2021.csv") 
SEP2022 <- fread("C:/Users/cata_/Documents/UMCE2/SEP/SEP2022.csv") 

# IVE----
IVE2015C <- read_excel("C:/Users/cata_/Documents/UMCE2/IVE/IVE2015.xlsx", sheet = "COMUNA") 

IVE2016C <- read_excel("C:/Users/cata_/Documents/UMCE2/IVE/IVE2016.xlsx",sheet = "COMUNA") 

IVE2017C <- read_excel("C:/Users/cata_/Documents/UMCE2/IVE/IVE2017.xlsx",sheet = "COMUNA") 

IVE2018C <- read_excel("C:/Users/cata_/Documents/UMCE2/IVE/IVE2018.xlsx",sheet = "COMUNA") 

IVE2019C <- read_excel("C:/Users/cata_/Documents/UMCE2/IVE/IVE2019.xlsx",sheet = "COMUNA") 

IVE2020C <- read_excel("C:/Users/cata_/Documents/UMCE2/IVE/IVE2020.xlsx",sheet = "COMUNA") 

IVE2021C <- read_excel("C:/Users/cata_/Documents/UMCE2/IVE/IVE2021.xlsx",sheet = "COMUNA") 

IVE2022C <- read_excel("C:/Users/cata_/Documents/UMCE2/IVE/IVE2022.xlsx",sheet = "COMUNA") 

IVE2023C <- read_excel("C:/Users/cata_/Documents/UMCE2/IVE/IVE2023.xlsx",sheet = "COMUNA") 

# IVM ----

IVM20161 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2016.xlsx",sheet = "1° Ciclo Básico") 
IVM20162 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2016.xlsx",sheet = "2° Ciclo Básico") 
IVM2016M <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2016.xlsx",sheet = "Media") 

IVM20171 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2017.xlsx",sheet = "1° Ciclo Básico") 
IVM20172 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2017.xlsx",sheet = "2° Ciclo Básico") 
IVM2017M <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2017.xlsx",sheet = "Media") 

IVM20181 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2018.xlsx",sheet = "1° Ciclo Básico") 
IVM20182 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2018.xlsx",sheet = "2° Ciclo Básico") 
IVM2018M <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2018.xlsx",sheet = "Media") 

IVM20191 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2019.xlsx",sheet = "1° Ciclo Básico") 
IVM20192 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2019.xlsx",sheet = "2° Ciclo Básico") 
IVM2019M <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2019.xlsx",sheet = "Media") 

IVM20201 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2020.xlsx",sheet = "1° Ciclo Básico") 
IVM20202 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2020.xlsx",sheet = "2° Ciclo Básico") 
IVM2020M <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2020.xlsx",sheet = "Media") 

IVM20211 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2021.xlsx",sheet = "1° Ciclo Básico") 
IVM20212 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2021.xlsx",sheet = "2° Ciclo Básico") 
IVM2021M <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2021.xlsx",sheet = "Media") 

IVM20221 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2022.xlsx",sheet = "1º Ciclo Básico") 
IVM20222 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2022.xlsx",sheet = "2º Ciclo Básico") 
IVM2022M <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2022.xlsx",sheet = "Media") 

IVM20231 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2023.xlsx",sheet = "1º Ciclo Básico") 
IVM20232 <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2023.xlsx",sheet = "2º Ciclo Básico") 
IVM2023M <- read_excel("C:/Users/cata_/Documents/UMCE2/IVM/IVM2023.xlsx",sheet = "Media") 

# RENDIMIENTO----

RENDIMIENTO2015 <- fread("C:/Users/cata_/Documents/UMCE2/RENDIMIENTO/RENDIMIENTO2015.csv")
RENDIMIENTO2016 <- fread("C:/Users/cata_/Documents/UMCE2/RENDIMIENTO/RENDIMIENTO2016.csv")
RENDIMIENTO2017 <- fread("C:/Users/cata_/Documents/UMCE2/RENDIMIENTO/RENDIMIENTO2017.csv")
RENDIMIENTO2018 <- fread("C:/Users/cata_/Documents/UMCE2/RENDIMIENTO/RENDIMIENTO2018.csv")
RENDIMIENTO2019 <- fread("C:/Users/cata_/Documents/UMCE2/RENDIMIENTO/RENDIMIENTO2019.csv")
RENDIMIENTO2020 <- fread("C:/Users/cata_/Documents/UMCE2/RENDIMIENTO/RENDIMIENTO2020.csv")
RENDIMIENTO2021 <- fread("C:/Users/cata_/Documents/UMCE2/RENDIMIENTO/RENDIMIENTO2021.csv")
RENDIMIENTO2022 <- fread("C:/Users/cata_/Documents/UMCE2/RENDIMIENTO/RENDIMIENTO2022.csv")





#-----  PREPARACIÓN -------------------------------------------------------
#SELECC VAR MATRICULAS ANTERIORES 
names(MATRICULA2014)
MATRICULA2007 <- MATRICULA2007 %>% rename_all(toupper)
MATRICULA2008 <- MATRICULA2008 %>% rename_all(toupper)
MATRICULA2009 <- MATRICULA2009 %>% rename_all(toupper)
MATRICULA2010 <- MATRICULA2010 %>% rename_all(toupper)
MATRICULA2011 <- MATRICULA2011 %>% rename_all(toupper)
MATRICULA2012 <- MATRICULA2012 %>% rename_all(toupper)

MATRICULA2007 <- select(MATRICULA2007, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)
MATRICULA2008 <- select(MATRICULA2008, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)
MATRICULA2009 <- select(MATRICULA2009, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)
MATRICULA2010 <- select(MATRICULA2010, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)
MATRICULA2011 <- select(MATRICULA2011, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)
MATRICULA2012 <- select(MATRICULA2012, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)
MATRICULA2013 <- select(MATRICULA2013, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)
MATRICULA2014 <- select(MATRICULA2014, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)

#SELECCIONAR VARIABLES MATRICULA ----
MATRICULA2015 <- select(MATRICULA2015, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)

MATRICULA2016 <- select(MATRICULA2016, 
                        ESTUDIANTE = mrun, SEXO = gen_alu, EDAD = edad_alu,
                        AÑO = agno, rbd, ESTABLECIMIENTO = nom_rbd, DEPENDENCIA = cod_depe, 
                        CURSO= cod_grado, cod_depe2,  cod_ense, cod_ense2, cod_ense3, JORNADA = cod_jor,
                        REGION = cod_reg_rbd,COMUNA = cod_com_rbd, COMUNA_NOM = nom_com_rbd, RURALIDAD = rural_rbd)

MATRICULA2017 <- select(MATRICULA2017,
                        ESTUDIANTE = mrun, SEXO = gen_alu, EDAD = edad_alu,
                        AÑO = agno, rbd, ESTABLECIMIENTO = nom_rbd, DEPENDENCIA = cod_depe, 
                        CURSO= cod_grado, cod_depe2,  cod_ense, cod_ense2, cod_ense3, JORNADA = cod_jor,
                        REGION = cod_reg_rbd,COMUNA = cod_com_rbd, COMUNA_NOM = nom_com_rbd, RURALIDAD = rural_rbd)

MATRICULA2018 <- select(MATRICULA2018, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)

MATRICULA2019 <- select(MATRICULA2019, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)

MATRICULA2020 <- select(MATRICULA2020, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)

MATRICULA2021 <- select(MATRICULA2021, 
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2, COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)

MATRICULA2022 <- select(MATRICULA2022,
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)

MATRICULA2023 <- select(MATRICULA2023,
                        ESTUDIANTE = MRUN, SEXO = GEN_ALU, EDAD = EDAD_ALU,
                        AÑO = AGNO, RBD, ESTABLECIMIENTO = NOM_RBD, DEPENDENCIA = COD_DEPE, 
                        CURSO= COD_GRADO, COD_DEPE2,  COD_ENSE, COD_ENSE2, COD_ENSE3, JORNADA = COD_JOR,
                        REGION = COD_REG_RBD, COMUNA = COD_COM_RBD, COMUNA_NOM = NOM_COM_RBD, RURALIDAD = RURAL_RBD)

MATRICULA2016 <- MATRICULA2016 %>% rename_all(toupper)
MATRICULA2017 <- MATRICULA2017 %>% rename_all(toupper)

#SELECCIONAR VARIABLES SEP y unir a matricula -----
SEP2015 <- select(SEP2015, ESTUDIANTE = MRUN, BEN_SEP)
MATRICULA2015 <- left_join(MATRICULA2015, SEP2015, by= "ESTUDIANTE")

SEP2016 <- select(SEP2016, ESTUDIANTE = MRUN, PRIORITARIO_ALU, PREFERENTE_ALU, BEN_SEP)
MATRICULA2016 <- left_join(MATRICULA2016, SEP2016, by= "ESTUDIANTE")

SEP2017 <- select(SEP2017, ESTUDIANTE = MRUN, PRIORITARIO_ALU, PREFERENTE_ALU, BEN_SEP)
MATRICULA2017 <- left_join(MATRICULA2017, SEP2017, by= "ESTUDIANTE")

SEP2018 <- select(SEP2018, ESTUDIANTE = MRUN, PRIORITARIO_ALU, PREFERENTE_ALU, BEN_SEP)
MATRICULA2018 <- left_join(MATRICULA2018, SEP2018, by= "ESTUDIANTE")

SEP2019 <- select(SEP2019, ESTUDIANTE = MRUN, PRIORITARIO_ALU, PREFERENTE_ALU, BEN_SEP)
MATRICULA2019 <- left_join(MATRICULA2019, SEP2019, by= "ESTUDIANTE")

SEP2020 <- select(SEP2020, ESTUDIANTE = MRUN, PRIORITARIO_ALU, PREFERENTE_ALU, BEN_SEP)
MATRICULA2020<- left_join(MATRICULA2020, SEP2020, by= "ESTUDIANTE")

SEP2021 <- select(SEP2021, ESTUDIANTE = MRUN, PRIORITARIO_ALU, PREFERENTE_ALU, BEN_SEP)
MATRICULA2021 <- left_join(MATRICULA2021, SEP2021, by= "ESTUDIANTE")

SEP2022 <- select(SEP2022, ESTUDIANTE = MRUN, PRIORITARIO_ALU, PREFERENTE_ALU, BEN_SEP)
MATRICULA2022 <- left_join(MATRICULA2022, SEP2022, by= "ESTUDIANTE")

#SELECCIONAR VARIABLES IVE y unir a matricula----
IVE2015C <- select(IVE2015C, COMUNA = "ID COMUNA", IVESINAE_COMUNAL = "IVE-SINAE COMUNAL 2015")
MATRICULA2015 <- left_join(MATRICULA2015, IVE2015C)


IVE2016C <- select(IVE2016C, COMUNA = "ID COMUNA", IVESINAE_COMUNAL = "IVE-SINAE COMUNAL 2016")
MATRICULA2016 <- left_join(MATRICULA2016, IVE2016C)


IVE2017C <- select(IVE2017C, COMUNA = "ID COMUNA", IVESINAE_COMUNAL = "IVE-SINAE COMUNAL 2017")
MATRICULA2017 <- MATRICULA2017 %>%
  mutate(COMUNA = as.character(COMUNA))
MATRICULA2017 <- left_join(MATRICULA2017, IVE2017C)


IVE2018C <- select(IVE2018C, COMUNA = "ID COMUNA", IVESINAE_COMUNAL = "IVE-SINAE COMUNAL 2018")
MATRICULA2018 <- MATRICULA2018 %>%
  mutate(COMUNA = as.character(COMUNA))
MATRICULA2018 <- left_join(MATRICULA2018, IVE2018C)


IVE2019C <- select(IVE2019C, COMUNA = "ID COMUNA", IVESINAE_COMUNAL = "IVE-SINAE COMUNAL 2019")
MATRICULA2019 <- MATRICULA2019 %>%
  mutate(COMUNA = as.character(COMUNA))
MATRICULA2019 <- left_join(MATRICULA2019, IVE2019C)


IVE2020C <- select(IVE2020C, COMUNA = ID_COMUNA_ESTABLE, IVESINAE_COMUNAL = "IVE-SINAE COMUNAL 2020")
MATRICULA2020 <- left_join(MATRICULA2020, IVE2020C)


IVE2021C <- select(IVE2021C, COMUNA = ID_COMUNA_ESTABLE, IVESINAE_COMUNAL = "IVE-SINAE COMUNAL 2021")
MATRICULA2021 <- left_join(MATRICULA2021, IVE2021C)


IVE2022C <- select(IVE2022C, COMUNA = ID_COMUNA_ESTABLE,IVESINAE_COMUNAL =  "IVE-SINAE COMUNAL 2022")
MATRICULA2022 <- left_join(MATRICULA2022, IVE2022C)


IVE2023C <- select(IVE2023C, COMUNA = ID_COMUNA_ESTABLE,IVESINAE_COMUNAL =  "IVE-SINAE COMUNAL 2023")
MATRICULA2023 <- left_join(MATRICULA2023, IVE2023C)





#TRATAR Y SELECCIONAR VARIABLES RENDIMIENTO ----

#MAYUSCULA A LAS OPCIONES DE SIT_FIN Y SIT_FIN_r

mayus <- function(data) {
  data$SIT_FIN <- toupper(data$SIT_FIN)
  data$SIT_FIN_R <- toupper(data$SIT_FIN_R)
  return(data)
}

#ARMAR INDICADOR DE REPITENTE TRASLADO Y RETIRO
RENDIMIENTO2015 <- mayus(RENDIMIENTO2015)
RENDIMIENTO2015$REPITENCIA<- ifelse(grepl("R", RENDIMIENTO2015$SIT_FIN, ignore.case = TRUE) | grepl("R", RENDIMIENTO2015$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2015$TRASLADO <- ifelse(grepl("T", RENDIMIENTO2015$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2015$RETIRO <- ifelse(grepl("Y", RENDIMIENTO2015$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")

RENDIMIENTO2016 <- RENDIMIENTO2016 %>% rename_all(toupper)
RENDIMIENTO2016 <- mayus(RENDIMIENTO2016)
RENDIMIENTO2016$REPITENCIA <- ifelse(grepl("R", RENDIMIENTO2016$SIT_FIN, ignore.case = TRUE) | grepl("R", RENDIMIENTO2016$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2016$TRASLADO <- ifelse(grepl("T", RENDIMIENTO2016$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2016$RETIRO <- ifelse(grepl("Y", RENDIMIENTO2016$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")

RENDIMIENTO2017 <- RENDIMIENTO2017 %>% rename_all(toupper)
RENDIMIENTO2017 <- mayus(RENDIMIENTO2017)
RENDIMIENTO2017$REPITENCIA <- ifelse(grepl("R", RENDIMIENTO2017$SIT_FIN, ignore.case = TRUE) | grepl("R", RENDIMIENTO2017$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2017$TRASLADO <- ifelse(grepl("T", RENDIMIENTO2017$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2017$RETIRO <- ifelse(grepl("Y", RENDIMIENTO2017$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")

RENDIMIENTO2018 <- mayus(RENDIMIENTO2018)
RENDIMIENTO2018$REPITENCIA <- ifelse(grepl("R", RENDIMIENTO2018$SIT_FIN, ignore.case = TRUE) | grepl("R", RENDIMIENTO2018$SIT_FIN_R, ignore.case = TRUE),"SI", "NO")
RENDIMIENTO2018$TRASLADO <- ifelse(grepl("T", RENDIMIENTO2018$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2018$RETIRO <- ifelse(grepl("Y", RENDIMIENTO2018$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")

RENDIMIENTO2019 <- mayus(RENDIMIENTO2019)
RENDIMIENTO2019$REPITENCIA <- ifelse(grepl("R", RENDIMIENTO2019$SIT_FIN, ignore.case = TRUE) | grepl("R", RENDIMIENTO2019$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2019$TRASLADO <- ifelse(grepl("T", RENDIMIENTO2019$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2019$RETIRO <- ifelse(grepl("Y", RENDIMIENTO2019$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")

RENDIMIENTO2020 <- mayus(RENDIMIENTO2020)
RENDIMIENTO2020$REPITENCIA <- ifelse(grepl("R", RENDIMIENTO2020$SIT_FIN, ignore.case = TRUE) | grepl("R", RENDIMIENTO2020$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2020$TRASLADO <- ifelse(grepl("T", RENDIMIENTO2020$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2020$RETIRO <- ifelse(grepl("Y", RENDIMIENTO2020$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")

RENDIMIENTO2021 <- mayus(RENDIMIENTO2021)
RENDIMIENTO2021$REPITENCIA <- ifelse(grepl("R", RENDIMIENTO2021$SIT_FIN, ignore.case = TRUE) | grepl("R", RENDIMIENTO2021$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2021$TRASLADO <- ifelse(grepl("T", RENDIMIENTO2021$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2021$RETIRO <- ifelse(grepl("Y", RENDIMIENTO2021$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")

RENDIMIENTO2022 <- mayus(RENDIMIENTO2022)
RENDIMIENTO2022$REPITENCIA <- ifelse(grepl("R", RENDIMIENTO2022$SIT_FIN, ignore.case = TRUE) | grepl("R", RENDIMIENTO2022$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2022$TRASLADO <- ifelse(grepl("T", RENDIMIENTO2022$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")
RENDIMIENTO2022$RETIRO <- ifelse(grepl("Y", RENDIMIENTO2022$SIT_FIN_R, ignore.case = TRUE), "SI", "NO")


#SELECCIONAR LAS VARIABLES 
RENDIMIENTO2015 <- select(RENDIMIENTO2015, ESTUDIANTE=MRUN, RBD, PROM_GRAL, ASISTENCIA, REPITENCIA, TRASLADO, RETIRO)
RENDIMIENTO2016 <- select(RENDIMIENTO2016, ESTUDIANTE=MRUN, RBD, PROM_GRAL, ASISTENCIA, REPITENCIA, TRASLADO, RETIRO)
RENDIMIENTO2017 <- select(RENDIMIENTO2017, ESTUDIANTE=MRUN, RBD, PROM_GRAL, ASISTENCIA, REPITENCIA, TRASLADO, RETIRO)
RENDIMIENTO2018 <- select(RENDIMIENTO2018, ESTUDIANTE=MRUN, RBD, PROM_GRAL, ASISTENCIA, REPITENCIA, TRASLADO, RETIRO)
RENDIMIENTO2019 <- select(RENDIMIENTO2019, ESTUDIANTE=MRUN, RBD, PROM_GRAL, ASISTENCIA, REPITENCIA, TRASLADO, RETIRO)
RENDIMIENTO2020 <- select(RENDIMIENTO2020, ESTUDIANTE=MRUN, RBD, PROM_GRAL, ASISTENCIA, REPITENCIA, TRASLADO, RETIRO)
RENDIMIENTO2021 <- select(RENDIMIENTO2021, ESTUDIANTE=MRUN, RBD, PROM_GRAL, ASISTENCIA, REPITENCIA, TRASLADO, RETIRO)
RENDIMIENTO2022 <- select(RENDIMIENTO2022, ESTUDIANTE=MRUN, RBD, PROM_GRAL, ASISTENCIA, REPITENCIA, TRASLADO, RETIRO)


#GESTIONAR DUPLICADOS DE CADA AÑO EN BASE RENDIMIENTO----- 
# Filtrar estudiantes duplicados con valores distintos de 0 en asistencia y promedio
# CAMBIAR POR CADA AÑO 
RENDIMIENTO2021<- RENDIMIENTO2021 %>%
  group_by(ESTUDIANTE) %>%
  filter(!(ASISTENCIA == 0 & PROM_GRAL == 0 & TRASLADO == "SI"))

# Verificar si hay duplicados restantes
duplicados_restantes <- RENDIMIENTO2021 %>%
  group_by(ESTUDIANTE) %>%
  summarize(duplicados = n()) %>%
  filter(duplicados > 1)

# Filtrar y eliminar los registros que cumplen la condición en la columna TRASLADADO
if (nrow(duplicados_restantes) > 0) {
  RENDIMIENTO2021 <- RENDIMIENTO2021 %>%
    filter(!(ESTUDIANTE %in% duplicados_restantes$ESTUDIANTE & TRASLADO == "SI"))
}


RENDIMIENTO2022 <- RENDIMIENTO2022 %>%
  group_by(ESTUDIANTE) %>%
  filter(!(ASISTENCIA == 0 & PROM_GRAL == 0 & TRASLADO == "SI"))

duplicados_restantes <- RENDIMIENTO2022 %>%
  group_by(ESTUDIANTE) %>%
  summarize(duplicados = n()) %>%
  filter(duplicados > 1)

if (nrow(duplicados_restantes) > 0) {
  RENDIMIENTO2022 <- RENDIMIENTO2022 %>%
    filter(!(ESTUDIANTE %in% duplicados_restantes$ESTUDIANTE & TRASLADO == "SI"))
}



#UNIR CON MATRICULA ----
MATRICULA2015 <- left_join(MATRICULA2015, RENDIMIENTO2015)
MATRICULA2016 <- left_join(MATRICULA2016, RENDIMIENTO2016)
MATRICULA2017 <- left_join(MATRICULA2017, RENDIMIENTO2017)
MATRICULA2018 <- left_join(MATRICULA2018, RENDIMIENTO2018)
MATRICULA2019 <- left_join(MATRICULA2019, RENDIMIENTO2019)
MATRICULA2020 <- left_join(MATRICULA2020, RENDIMIENTO2020)
MATRICULA2021 <- left_join(MATRICULA2021, RENDIMIENTO2021)
MATRICULA2022 <- left_join(MATRICULA2022, RENDIMIENTO2022)

names(MATRICULA2017)




#SEPARAR BASES SEGUN TIPO DE EDUCACIÓN-----

# Filtrar estudiantes de educación especial
estudiantes_educacion_especial <- MATRICULA2023 %>%
  filter(substr(COD_ENSE, 1, 1) == "2")  # Filtrar los códigos que empiezan con "2"

# Crear una nueva base de datos con los estudiantes de educación especial
ED_ESPECIAL_23 <- estudiantes_educacion_especial

# Remover los estudiantes de educación especial de la base de datos original
MATRICULA2023 <- MATRICULA2023 %>%
  filter(!(substr(COD_ENSE, 1, 1) == "2"))



# Filtrar estudiantes de parvularia-----
estudiantes_parv <- MATRICULA2023%>%
  filter(COD_ENSE == "10")  # Filtrar los códigos que empiezan con "2"

# Crear una nueva base de datos con los estudiantes de parvularia
ED_PARV_23 <- estudiantes_parv

# Remover los estudiantes de parvularia de la base de datos original
MATRICULA2023 <- MATRICULA2023 %>%
  filter(COD_ENSE != "10")

#GUARDAR MATRICULAS SIN PARV-SIN ED ESPECIAL- CON RENDIMIENTO ARREGLADO
fwrite(MATRICULA2015, "C:/Users/cata_/Documents/UMCE2/MATRICULA2015.csv")

#----
#SEPARAR EDUACIÓN ADULTO Y NIÑOS Y JOVENES
# Definir los 24 códigos ADULTO
codigos_adultos <- c("160", "161", "163", "165", "167", "360", "361", "362", "363", "460", "461", "463", "560", "561", "563", "660", "661", "663", "760", "761", "763", "860", "863", "963")

# Filtrar estudiantes con los 24 códigos diferentes en la columna COD_ENSE
ED_ADULTOS <- TODO %>%
  filter(COD_ENSE %in% codigos_adultos)  # Filtrar los códigos definidos en la lista

# Visualizar la nueva base de datos ED_ADULTOS
head(ED_ADULTOS15)

#GUARDAR ED ADULTOS POR AÑO
fwrite(ED_ADULTOS, "C:/Users/cata_/Documents/UMCE2/EPJA.csv")

# Definir los  códigos NIÑOS
codigos_NA <- c("110", "310", "410", "510", "610", "710", "810", "910")

# Filtrar estudiantes con los 24 códigos diferentes en la columna COD_ENSE
NNAA <- TODO %>%
  filter(COD_ENSE %in% codigos_NA)  # Filtrar los códigos definidos en la lista

# Visualizar la nueva base de datos ED_ADULTOS
head(ED_NI_AD23)

#GUARDAR ED NIÑOS POR AÑO
fwrite(NNAA, "C:/Users/cata_/Documents/UMCE2/NNAA.csv")

#----
rm(SEP2015, SEP2016, SEP2017, SEP2018, SEP2019, SEP2020, SEP2021, SEP2022)
rm(RENDIMIENTO2015, RENDIMIENTO2016, RENDIMIENTO2017, RENDIMIENTO2018, RENDIMIENTO2019)
rm(RENDIMIENTO2020, RENDIMIENTO2021, RENDIMIENTO2022) 

#UNiON BASES -----
#UNIR PREPANDEMIA
MAT15_16 <- merge(MATRICULA2015, MATRICULA2016, all=T, no.dups = T)

MAT15_16_17 <- rbind(MAT15_16, MATRICULA2017)
MAT15_16_17_18 <- rbind(MAT15_16_17, MATRICULA2018)
PREPANDEMIA <- rbind(MAT15_16_17_18, MATRICULA2019)

MAT15_16_17 <- rbindlist(list(MAT15_16, MATRICULA2017), fill = TRUE)
MAT15_16_17_18 <- rbindlist(list(MAT15_16_17, MATRICULA2018), fill = TRUE)
PREPANDEMIA <- rbindlist(list(MAT15_16_17_18, MATRICULA2019), fill = TRUE)

#UNIR PANDEMIA
PANDEMIA <- rbindlist(list(MATRICULA2020, MATRICULA2021), fill = TRUE)

#UNIR POSTPANDEMIA
POSTPANDEMIA <- rbindlist(list(MATRICULA2022, MATRICULA2023), fill = TRUE)

#Unir todo
TODO <- rbindlist(list(PREPANDEMIA, PANDEMIA), fill = TRUE)
TODO <- rbindlist(list(TODO, POSTPANDEMIA), fill = TRUE)

#guardar bases

fwrite(TODO, "C:/Users/cata_/Documents/UMCE2/TODO.csv")

fwrite(PANDEMIA, "C:/Users/cata_/Documents/UMCE2/PANDEMIA.csv")
fwrite(PREPANDEMIA, "C:/Users/cata_/Documents/UMCE2/PREPANDEMIA.csv")
fwrite(POSTPANDEMIA, "C:/Users/cata_/Documents/UMCE2/POSTPANDEMIA.csv")

#RECODIFICAR ----
#GUARDAR MATRICULAS SIN ED ESPECIAL- CON RENDIMIENTO ARREGLADO
fwrite(MATRICULA2015, "C:/Users/cata_/Documents/UMCE2/MATRICULA2015.csv")
fwrite(MATRICULA2016, "C:/Users/cata_/Documents/UMCE2/MATRICULA2016.csv")
fwrite(MATRICULA2017, "C:/Users/cata_/Documents/UMCE2/MATRICULA2017.csv")
fwrite(MATRICULA2018, "C:/Users/cata_/Documents/UMCE2/MATRICULA2018.csv")
fwrite(MATRICULA2019, "C:/Users/cata_/Documents/UMCE2/MATRICULA2019.csv")
fwrite(MATRICULA2020, "C:/Users/cata_/Documents/UMCE2/MATRICULA2020.csv")
fwrite(MATRICULA2021, "C:/Users/cata_/Documents/UMCE2/MATRICULA2021.csv")
fwrite(MATRICULA2022, "C:/Users/cata_/Documents/UMCE2/MATRICULA2022.csv")
fwrite(MATRICULA2023, "C:/Users/cata_/Documents/UMCE2/MATRICULA2023.csv")

#cambiar por año 
MATRICULA2023 <- MATRICULA2023 %>%
  mutate(RECODE_GRADO = case_when(
    COD_ENSE == "10" & CURSO == 1 ~ -5,
    COD_ENSE == "10" & CURSO == 2 ~ -4,
    COD_ENSE == "10" & CURSO == 3 ~ -3,
    COD_ENSE == "10" & CURSO == 4 ~ -2,
    COD_ENSE == "10" & CURSO == 5 ~ -1,
    COD_ENSE == "110" & CURSO == 1 ~ 1,
    COD_ENSE == "110" & CURSO == 2 ~ 2,
    COD_ENSE == "110" & CURSO == 3 ~ 3,
    COD_ENSE == "110" & CURSO == 4 ~ 4,
    COD_ENSE == "110" & CURSO == 5 ~ 5,
    COD_ENSE == "110" & CURSO == 6 ~ 6,
    COD_ENSE == "110" & CURSO == 7 ~ 7,
    COD_ENSE == "110" & CURSO == 8 ~ 8,
    COD_ENSE == "165" & CURSO == 1 ~ 1,
    COD_ENSE == "165" & CURSO == 2 ~ 2,
    COD_ENSE == "165" & CURSO == 3 ~ 3,
    COD_ENSE == "167" & CURSO == 2 ~ 2,
    COD_ENSE == "167" & CURSO == 3 ~ 3,
    COD_ENSE == "310" & CURSO == 1 ~ 9,
    COD_ENSE == "310" & CURSO == 2 ~ 10,
    COD_ENSE == "310" & CURSO == 3 ~ 11,
    COD_ENSE == "310" & CURSO == 4 ~ 12,
    COD_ENSE == "363" & CURSO == 1 ~ 4,
    COD_ENSE == "363" & CURSO == 3 ~ 5,
    COD_ENSE == "410" & CURSO == 1 ~ 9,
    COD_ENSE == "410" & CURSO == 2 ~ 10,
    COD_ENSE == "410" & CURSO == 3 ~ 11,
    COD_ENSE == "410" & CURSO == 4 ~ 12,
    COD_ENSE == "463" & CURSO == 1 ~ 4,
    COD_ENSE == "463" & CURSO == 3 ~ 5,
    COD_ENSE == "463" & CURSO == 4 ~ 5,
    COD_ENSE == "510" & CURSO == 1 ~ 9,
    COD_ENSE == "510" & CURSO == 2 ~ 10,
    COD_ENSE == "510" & CURSO == 3 ~ 11,
    COD_ENSE == "510" & CURSO == 4 ~ 12,
    COD_ENSE == "563" & CURSO == 1 ~ 4,
    COD_ENSE == "563" & CURSO == 3 ~ 5,
    COD_ENSE == "563" & CURSO == 4 ~ 5,
    COD_ENSE == "610" & CURSO == 1 ~ 9,
    COD_ENSE == "610" & CURSO == 2 ~ 10,
    COD_ENSE == "610" & CURSO == 3 ~ 11,
    COD_ENSE == "610" & CURSO == 4 ~ 12,
    COD_ENSE == "663" & CURSO == 1 ~ 4,
    COD_ENSE == "663" & CURSO == 3 ~ 5,
    COD_ENSE == "663" & CURSO == 4 ~ 5,
    COD_ENSE == "710" & CURSO == 1 ~ 9,
    COD_ENSE == "710" & CURSO == 2 ~ 10,
    COD_ENSE == "710" & CURSO == 3 ~ 11,
    COD_ENSE == "710" & CURSO == 4 ~ 12,
    COD_ENSE == "763" & CURSO == 1 ~ 4,
    COD_ENSE == "763" & CURSO == 3 ~ 5,
    COD_ENSE == "763" & CURSO == 4 ~ 5,
    COD_ENSE == "810" & CURSO == 1 ~ 9,
    COD_ENSE == "810" & CURSO == 2 ~ 10,
    COD_ENSE == "810" & CURSO == 3 ~ 11,
    COD_ENSE == "810" & CURSO == 4 ~ 12,
    COD_ENSE == "863" & CURSO == 1 ~ 4,
    COD_ENSE == "863" & CURSO == 3 ~ 5,
    COD_ENSE == "863" & CURSO == 4 ~ 5,
    COD_ENSE == "910" & CURSO == 1 ~ 9,
    COD_ENSE == "910" & CURSO == 2 ~ 10,
    COD_ENSE == "910" & CURSO == 3 ~ 11,
    COD_ENSE == "910" & CURSO == 4 ~ 12,
    COD_ENSE == "963" & CURSO == 1 ~ 4,
    COD_ENSE == "963" & CURSO == 3 ~ 5,
    COD_ENSE == "963" & CURSO == 4 ~ 5,
    TRUE ~ NA_integer_  # Valor por defecto para otros casos
  ))



# Cargar las librerías necesarias
library(kableExtra)
install.packages("KableExtra")
# Información de provincias y comunas
provincias <- c("Santiago Norte", "Santiago Poniente", "Santiago Oriente", "Santiago Centro", "Cordillera", "Talagante", "Santiago Sur")
comunas <- list(c("Independencia", "Recoleta", "Quilicura", "Huechuraba", "Conchalí", "Colina", "Lampa", "Til Til"),
                c("Maipú", "Quinta Normal", "Renca", "Pudahuel", "Cerro Navia", "Lo Prado", "Estación Central", "Cerrillos"),
                c("Ñuñoa", "Providencia", "Las Condes", "La Reina", "Vitacura", "Lo Barnechea", "Peñalolén", "Macul"),
                c("Santiago", "Pedro Aguirre Cerda", "San Miguel", "San Joaquín"),
                c("Puente Alto", "Pirque", "San José de Maipo", "La Florida", "La Pintana"),
                c("Talagante", "Peñaflor", "El Monte", "Isla de Maipo", "Melipilla", "Curacaví", "María Pinto", "San Pedro", "Alhué", "Padre Hurtado"),
                c("La Granja", "La Cisterna", "San Ramón", "El Bosque", "Lo Espejo", "San Bernardo", "Buin", "Paine", "Calera de Tango"))

# Crear un data frame con las provincias y las comunas que agrupan
datos <- data.frame(Provincia = provincias, Comunas = sapply(comunas, paste, collapse = ", "))

# Crear la tabla en formato APA utilizando kableExtra
tabla_apa <- datos %>%
  kable("html", escape = FALSE) %>%
  kable_styling(full_width = FALSE) %>%
  column_spec(1, bold = TRUE) %>%
  row_spec(0, bold = TRUE)

tabla_apa <- datos %>%
  kable("html", escape = FALSE, align = "l") %>%
  kable_styling(full_width = FALSE) %>%
  add_header_above(c("Tabla 1" = 1, "Departamentos Provinciales y sus comunas" = 1)) %>%
  column_spec(1, bold = TRUE, width = "10em") %>%
  row_spec(0, bold = TRUE, color = "white", background = "#7F7F7F")
# Mostrar la tabla
tabla_apa
