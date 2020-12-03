
##  Objetivo del codigo: Hacer un esquema donde se le cambien los valores para cada vez que se produce un nuevo lote de bálsamos
##
##  

# setup
library(readxl)
library(magrittr)

# setwd("/home/andrea/Documentos/cosmetica_ocarina") # Andre
# setwd("Documentos/cosmetica_ocarina") # Sebas
# .libPaths("D:/Rlib") # Sebas

# llamando los datos
raw_locale <- "data/raw/"
receta <- read_excel(paste0(raw_locale, "Balsamos.xlsx"), sheet = "receta")
precios <- read_excel(paste0(raw_locale, "Cuentas.xlsx"), sheet = "Materiales")


# acoplando formato

# generando lista de precios de los ingredientes usados
precios_receta <- precios[precios$articulo %in% receta$articulo, ]

