pacman::p_load("dplyr", "ggplot2", "readr", "readxl", "data.table") 


RENISE15 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2015.csv")
RENISE16 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2016.csv")
RENISE17 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2017.csv")
RENISE18 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2018.csv")
RENISE19 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2019.csv")
RENISE20 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2020.csv")
RENISE21 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2021.csv")
RENISE22 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2022.csv")
RENISE23 <- fread("C:/Users/cata_/Documents/UMCE2/RENISE/RENISE 2023.csv")


# Crear una nueva base de datos solo con los nombres de las columnas
nombres <- names(RENISE15)
B2015 <- data.frame(CODIGO = nombres)
# Crear una nueva base de datos solo con los nombres de las columnas
nombres <- names(RENISE16)
B2016 <- data.frame(CODIGO = nombres)
# Crear una nueva base de datos solo con los nombres de las columnas
nombres <- names(RENISE17)
B2017 <- data.frame(CODIGO = nombres)
# Crear una nueva base de datos solo con los nombres de las columnas
nombres <- names(RENISE18)
B2018 <- data.frame(CODIGO = nombres)
# Crear una nueva base de datos solo con los nombres de las columnas
nombres <- names(RENISE19)
B2019 <- data.frame(CODIGO = nombres)
# Crear una nueva base de datos solo con los nombres de las columnas
nombres <- names(RENISE20)
B2020 <- data.frame(CODIGO = nombres)
# Crear una nueva base de datos solo con los nombres de las columnas
nombres <- names(RENISE21)
B2021 <- data.frame(CODIGO = nombres)
# Crear una nueva base de datos solo con los nombres de las columnas
nombres <- names(RENISE22)
B2022 <- data.frame(CODIGO = nombres)
# Crear una nueva base de datos solo con los nombres de las columnas
nombres <- names(RENISE23)
B2023 <- data.frame(CODIGO = nombres)



original <- read_excel("C:/Users/cata_/Documents/UMCE2/VAR RENISE.xlsx", sheet = "ORG") 


identicas1 <- merge(B2015, original, by= "CODIGO", all.x = TRUE)
identicas2 <- merge(B2016, original, by= "CODIGO", all.x = TRUE)
identicas3 <- merge(B2017, original, by= "CODIGO", all.x = TRUE)
identicas4 <- merge(B2018, original, by= "CODIGO", all.x = TRUE)
identicas5 <- merge(B2019, original, by= "CODIGO", all.x = TRUE)
identicas6 <- merge(B2020, original, by= "CODIGO", all.x = TRUE)
identicas7 <- merge(B2021, original, by= "CODIGO", all.x = TRUE)
identicas8 <- merge(B2022, original, by= "CODIGO", all.x = TRUE)
identicas9 <- merge(B2023, original, by= "CODIGO", all.x = TRUE)

todo <- rbind(identicas1, identicas2, identicas3, identicas4, identicas5,
              identicas6, identicas7, identicas8, identicas9)


filas_unicas <- unique(todo)




library(openxlsx)

# Suponiendo que 'filas_identicas' es el resultado que deseas guardar en una hoja de Excel
# Crea un nuevo libro de Excel
VAR_RENISE <- createWorkbook()

# Agrega cada conjunto de datos a una hoja diferente en el libro de Excel
addWorksheet(VAR_RENISE, "2015")
writeData(VAR_RENISE, sheet = 1, identicas1)

addWorksheet(VAR_RENISE, "2016")
writeData(VAR_RENISE, sheet = 2, identicas2)

addWorksheet(VAR_RENISE, "2017")
writeData(VAR_RENISE, sheet = 3, identicas3)

addWorksheet(VAR_RENISE, "2018")
writeData(VAR_RENISE, sheet = 4, identicas4)

addWorksheet(VAR_RENISE, "2019")
writeData(VAR_RENISE, sheet = 5, identicas5)

addWorksheet(VAR_RENISE, "2020")
writeData(VAR_RENISE, sheet = 6, identicas6)

addWorksheet(VAR_RENISE, "2021")
writeData(VAR_RENISE, sheet = 7, identicas7)

addWorksheet(VAR_RENISE, "2022")
writeData(VAR_RENISE, sheet = 8, identicas8)

addWorksheet(VAR_RENISE, "2023")
writeData(VAR_RENISE, sheet = 9, identicas9)

addWorksheet(VAR_RENISE, "FALTANTES")
writeData(VAR_RENISE, sheet = 10, filas_unicas)
# ... Aquí puedes agregar más hojas con otros conjuntos de datos si lo necesitas
# addWorksheet(wb, "Otra_Hoja")
# writeData(wb, sheet = 2, otro_conjunto_de_datos)

# Especifica la ruta donde quieres guardar el archivo de Excel
ruta_excel <- "C:/Users/cata_/Documents/UMCE2/RENISE/VAR.xlsx"

# Guarda el libro de Excel
saveWorkbook(VAR_RENISE, ruta_excel, overwrite = TRUE)
