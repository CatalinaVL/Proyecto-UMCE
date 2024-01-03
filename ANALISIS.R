pacman::p_load("dplyr", "ggplot2", "readr", "readxl", "data.table") 

#abrir
RENISE15 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2015.csv")
RENISE16 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2016.csv")
RENISE17 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2017.csv")
RENISE18 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2018.csv")
RENISE19 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2019.csv")
RENISE20 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2020.csv")
RENISE21 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2021.csv")
RENISE22 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2022.csv")
RENISE23 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2023.csv")
RENISE <- fread("C:/Users/cata_/Documents/UMCE2/RENISE2.csv")

#----- Obtener las categorías únicas de la variable antecedente_1 -----
names(RENISE17)
resp <- unique(RENISE15$HIJOS)
resp <- unique(RENISE17$CONHIJOS)
resp <- unique(RENISE15$ESC_MADRE)
resp <- unique(RENISE15$GRUPO_FONASA)
resp <- unique(RENISE15$ID_CHS_MDS)
resp <- unique(RENISE15$FONASAPOBRE12)
resp <- unique(RENISE15$SOBREDAD12)
resp <- unique(RENISE15$SENAME)
resp2 <- unique(RENISE15$HIJOS)

# Mostrar las categorías únicas
print(resp)
print(resp2)

#Seleccionar variables -----
names(RENISE15)
RENISE15 <- select(RENISE15,
                   AÑO = ID_ANO_ESCOLAR,
                   ID_RBD,
                   HIJOS = HIJOS,
                   ESC_MADRE = ESC_MADRE,
                   SENAME)
names(RENISE16)
RENISE16 <- select(RENISE16,
                   AÑO = ID_ANO_ESCOLAR,
                   ID_RBD,
                   HIJOS = RUNCONHIJOS,
                   ESC_MADRE = ESC_MADRE,
                   SENAME)
names(RENISE17)
RENISE17<- select(RENISE17,
                   AÑO = ID_ANO_ESCOLAR,
                   ID_RBD,
                   HIJOS = CONHIJOS,
                   ESC_MADRE = ESC_MADRE,
                   SENAME)
names(RENISE18)
RENISE18 <- select(RENISE18,
                   AÑO = ID_ANO_ESCOLAR,
                   ID_RBD,
                   HIJOS = CONHIJOS,
                   ESC_MADRE = ESC_MADRE,
                   SENAME= SENAME_2013_2017)
names(RENISE19)
RENISE19 <- select(RENISE19,
                   AÑO = ID_ANO_ESCOLAR,
                   ID_RBD,
                   HIJOS = CONHIJOS,
                   ESC_MADRE = ESC_MADRE,
                   SENAME = SENAME_2013_2018)
names(RENISE20)
RENISE20 <- select(RENISE20,
                   AÑO = ID_ANO_ESCOLAR,
                   ID_RBD,
                   HIJOS = CONHIJOS,
                   ESC_MADRE = ESC_MADRE,
                   SENAME = SENAME_2013_2019)
names(RENISE21)
RENISE21 <- select(RENISE21,
                   AÑO = ID_ANO_ESCOLAR,
                   ID_RBD,
                   HIJOS = CONHIJOS,
                   ESC_MADRE = ESC_MADRE,
                   SENAME = SENAME_2013_2020)
names(RENISE22)
RENISE22 <- select(RENISE22,
                   AÑO = ID_ANO_ESCOLAR,
                   ID_RBD,
                   HIJOS = CONHIJOS,
                   ESC_MADRE = ESC_MADRE,
                   SENAME3= SENAME_2013_2022)
names(RENISE23)
RENISE23 <- select(RENISE23,
                   AÑO = ID_ANO_ESCOLAR,
                   ID_RBD,
                   HIJOS = CONHIJOS,
                   ESC_MADRE = ESC_MADRE,
                   SENAME = SENAME_2013_2022)

#Escolaridad madre----
RENISE17 <- RENISE17 %>%
  mutate(ESC_MADRE2 = case_when(
    ESC_MADRE %in% 1:8 ~ "BASICA",
    ESC_MADRE %in% 9:12 ~ "MEDIA",
    ESC_MADRE > 12 ~ "SUPERIOR",
    TRUE ~ as.character(ESC_MADRE)  # Si no cumple ninguna condición, conserva el valor original como texto
  ))

ESCOLARIDADMADRE <- RENISE17 %>%
  group_by(ID_RBD) %>%
  summarise(ESC_BASICA = mean(ESC_MADRE2 == "BASICA", na.rm = TRUE),
            ESC_MEDIA = mean(ESC_MADRE2 == "MEDIA", na.rm = TRUE),
            ESC_SUPERIOR = mean(ESC_MADRE2 == "SUPERIOR", na.rm = TRUE))

ESCOLARIDADMADRE[is.na(ESCOLARIDADMADRE)] <- NA

#HIJOS
RENISE17$HIJOS <- ifelse(is.na(RENISE17$HIJOS), 0, 1)

HIJOS <- RENISE17 %>%
  group_by(ID_RBD) %>%
  summarise(NOHIJOS = mean(HIJOS, na.rm = TRUE))


#SENAME 
RENISE17$SENAME <- ifelse(is.na(RENISE17$SENAME), 0, 1)

SENAME <- RENISE17 %>%
  group_by(ID_RBD) %>%
  summarise(SENAME = mean(RENISE17$SENAME, na.rm = TRUE))

#UNIR
RENISE17 <- left_join(ESCOLARIDADMADRE, HIJOS)
RENISE17 <- left_join(RENISE17, SENAME)

RENISE17 <- RENISE17 %>%
  mutate(AÑO= 2022)
RENISE17 <- RENISE17 %>%
  mutate(AÑOLOGICO = 2023)

RENISE <- rbindlist(list(RENISE15, RENISE16), fill = TRUE)
RENISE <- rbindlist(list(RENISE, RENISE17), fill = TRUE)
RENISE <- rbindlist(list(RENISE, RENISE18), fill = TRUE)
RENISE <- rbindlist(list(RENISE, RENISE19), fill = TRUE)
RENISE <- rbindlist(list(RENISE, RENISE20), fill = TRUE)
RENISE <- rbindlist(list(RENISE, RENISE21), fill = TRUE)
RENISE <- rbindlist(list(RENISE, RENISE22), fill = TRUE)
RENISE <- rbindlist(list(RENISE, RENISE23), fill = TRUE)

names(RENISE)
#ORDENAR NOMBRES
RENISE <- RENISE %>%
  select(ID_RBD, AÑO, AÑOLOGICO, ESC_BASICA, ESC_MEDIA, ESC_SUPERIOR, HIJOS, SENAME)
# Renombrar la variable "NOHIJOS" a "HIJOS" en el DataFrame RENISE23
RENISE <- RENISE %>%
  rename(HIJOS = NOHIJOS)



#GUARDAR
fwrite(RENISE, "C:/Users/cata_/Documents/UMCE2/RENISE2.csv")


#-----

# Escolaridad madre y características HIJOS y SENAME para RENISE21
# Escolaridad madre y características HIJOS y SENAME para RENISE22
# Escolaridad madre y características HIJOS y SENAME para RENISE23
RENISE23 <- RENISE23 %>%
  mutate(ESC_MADRE2 = case_when(
    ESC_MADRE %in% 1:8 ~ "BASICA",
    ESC_MADRE %in% 9:12 ~ "MEDIA",
    ESC_MADRE > 12 ~ "SUPERIOR",
    TRUE ~ as.character(ESC_MADRE)
  ))

ESCOLARIDADMADRE <- RENISE23 %>%
  group_by(ID_RBD) %>%
  summarise(ESC_BASICA = mean(ESC_MADRE2 == "BASICA", na.rm = TRUE),
            ESC_MEDIA = mean(ESC_MADRE2 == "MEDIA", na.rm = TRUE),
            ESC_SUPERIOR = mean(ESC_MADRE2 == "SUPERIOR", na.rm = TRUE))

ESCOLARIDADMADRE[is.na(ESCOLARIDADMADRE)] <- NA

RENISE23$HIJOS <- ifelse(is.na(RENISE23$HIJOS), 0, 1)

HIJOS <- RENISE23 %>%
  group_by(ID_RBD) %>%
  summarise(NOHIJOS = mean(HIJOS, na.rm = TRUE))

RENISE23$SENAME <- ifelse(is.na(RENISE23$SENAME), 0, 1)

SENAME <- RENISE23 %>%
  group_by(ID_RBD) %>%
  summarise(SENAME = mean(SENAME, na.rm = TRUE))

RENISE23 <- left_join(ESCOLARIDADMADRE, HIJOS)
RENISE23 <- left_join(RENISE23, SENAME)

RENISE23 <- RENISE23 %>%
  mutate(AÑO = 2022) %>%
  mutate(AÑOLOGICO = 2023)




#----
  
lista_bases <- split(RENISE, RENISE$AÑOLOGICO)
RENISE_2023 <- lista_bases$"2023"  # Cambia "2015" por el año que necesites
duplicados_2015 <- sum(duplicated(RENISE_2023$ID_RBD))
duplicados_2015 <- subset(RENISE_2015, duplicated(RENISE_2015$ID_RBD) | duplicated(RENISE_2015$ID_RBD, fromLast = TRUE))
RENISE_2022[duplicated(RENISE_2022[, c("ID_RBD", "AÑO")]), ]
RENISE23[duplicated(RENISE23),]



# Calcular el promedio por grupo fonsa para cada colegio----

#FONASA 
FONASA <- RENISE15 %>%
  group_by(ID_RBD) %>%
  summarise(FONASA1 = mean(GRUPO_FONASA == 1, na.rm = TRUE),
            FONASA2 = mean(GRUPO_FONASA == 2, na.rm = TRUE),
            FONASA3 = mean(GRUPO_FONASA == 3, na.rm = TRUE),
            FONASA4 = mean(GRUPO_FONASA == 4, na.rm = TRUE),
            FONASA5 = mean(GRUPO_FONASA == 5, na.rm = TRUE),
            FONASA6 = mean(GRUPO_FONASA == 6, na.rm = TRUE))
#por chssoo
ID_CHS_MDS <- RENISE15 %>%
  group_by(ID_RBD) %>%
  summarise(MENOSUNO = mean(ID_CHS_MDS == -1, na.rm = TRUE) * 100,
            CERO = mean(ID_CHS_MDS == 0, na.rm = TRUE) * 100,
            UNO = mean(ID_CHS_MDS == 1, na.rm = TRUE) * 100)

#Sobre edad
# Calcular la proporción y el porcentaje por cantidad de años de sobreedad para cada colegio
SOBREEDAD <- RENISE15 %>%
  group_by(ID_RBD) %>%
  summarise(Porcentaje_1_anio = mean(SOBREDAD12 == 1, na.rm = TRUE) * 100,
            Porcentaje_2_anios = mean(SOBREDAD12 == 2, na.rm = TRUE) * 100)


#estrato 1 fracaso escolar 

CTELENG12 <- RENISE15 %>%
  group_by(ID_RBD) %>%
  summarise(CON_RIESGO = mean(CTELENG12 == 1, na.rm = TRUE) * 100,
            SIN_RIESGO = mean(CTELENG12 == 0, na.rm = TRUE) * 100)

#estrato 1 fracaso escolar 

CTEMAT12 <- RENISE15 %>%
  group_by(ID_RBD) %>%
  summarise(CON_RIESGO = mean(CTEMAT12 == 1, na.rm = TRUE) * 100,
            SIN_RIESGO = mean(CTEMAT12 == 0, na.rm = TRUE) * 100)

#Puntaje de riesgo estrato 1 simce lenguaje SCLENG12

#Puntaje de riesgo estrato 2 simce matematica SCMAT12