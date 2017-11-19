## Gracias a Alvaro Fuenzalida (@a_fuenzalidag) y Gonzalo Oyanedel (@goyanedelvial) por su invaluable ayuda
## armando este script.



library(jsonlite)
library(xlsx)
library(dplyr)

circ01 <- fromJSON(txt="http://servelelecciones.cl/data/elecciones_senadores/computo/circ_senatorial/5001.json")
circ02 <- fromJSON(txt="http://servelelecciones.cl/data/elecciones_senadores/computo/circ_senatorial/5002.json")
circ04 <- fromJSON(txt="http://servelelecciones.cl/data/elecciones_senadores/computo/circ_senatorial/5004.json")
circ06 <- fromJSON(txt="http://servelelecciones.cl/data/elecciones_senadores/computo/circ_senatorial/5006.json")
circ09 <- fromJSON(txt="http://servelelecciones.cl/data/elecciones_senadores/computo/circ_senatorial/5009.json")
circ11 <- fromJSON(txt="http://servelelecciones.cl/data/elecciones_senadores/computo/circ_senatorial/5011.json")
circ14 <- fromJSON(txt="http://servelelecciones.cl/data/elecciones_senadores/computo/circ_senatorial/5014.json")


tabla_circ01<- data.frame(circ01$data$sd[[1]]$sd[[1]])
tabla_circ01<- rbind(tabla_circ01, circ01$data$sd[[2]]$sd[[1]])
tabla_circ01<- rbind(tabla_circ01, circ01$data$sd[[2]]$sd[[2]])
tabla_circ01<- rbind(tabla_circ01, circ01$data$sd[[2]]$sd[[3]])
tabla_circ01<- rbind(tabla_circ01, circ01$data$sd[[3]]$sd[[1]])
tabla_circ01<- rbind(tabla_circ01, circ01$data$sd[[3]]$sd[[2]])
tabla_circ01<- rbind(tabla_circ01, circ01$data$sd[[4]]$sd[[1]])
tabla_circ01<- rbind(tabla_circ01, circ01$data$sd[[5]]$sd[[1]])
tabla_circ01<- rbind(tabla_circ01, circ01$data$sd[[5]]$sd[[2]])
tabla_circ01<- rbind(tabla_circ01, circ01$data$sd[[6]])
colnames(tabla_circ01) <- c("Candidato", "Partido", "Votos", "Porcentaje", "Candidatos", "Electo")
tabla_circ01$Circunscripcion <- "1"
tabla_circ01 <- tabla_circ01[,c(8,1,2,3,4)]

tabla_circ02<- data.frame(circ02$data$sd[[1]]$sd[[1]])
tabla_circ02<- rbind(tabla_circ02, circ02$data$sd[[2]]$sd[[1]])
tabla_circ02<- rbind(tabla_circ02, circ02$data$sd[[3]]$sd[[1]])
tabla_circ02<- rbind(tabla_circ02, circ02$data$sd[[3]]$sd[[2]])
tabla_circ02<- rbind(tabla_circ02, circ02$data$sd[[4]]$sd[[1]])
tabla_circ02<- rbind(tabla_circ02, circ02$data$sd[[4]]$sd[[2]])
tabla_circ02<- rbind(tabla_circ02, circ02$data$sd[[4]]$sd[[1]])
tabla_circ02<- rbind(tabla_circ02, circ02$data$sd[[5]])
colnames(tabla_circ02) <- c("Candidato", "Partido", "Votos", "Porcentaje", "Candidatos", "Electo")
tabla_circ02$Circunscripcion <- "2"
tabla_circ02 <- tabla_circ02[,c(8,1,2,3,4)]

tabla_circ04<- data.frame(circ04$data$sd[[1]]$sd[[1]])
tabla_circ04<- rbind(tabla_circ04, circ04$data$sd[[2]]$sd[[1]])
tabla_circ04<- rbind(tabla_circ04, circ04$data$sd[[3]]$sd[[1]])
tabla_circ04<- rbind(tabla_circ04, circ04$data$sd[[3]]$sd[[2]])
tabla_circ04<- rbind(tabla_circ04, circ04$data$sd[[3]]$sd[[3]])
tabla_circ04<- rbind(tabla_circ04, circ04$data$sd[[4]]$sd[[1]])
tabla_circ04<- rbind(tabla_circ04, circ04$data$sd[[4]]$sd[[2]])
tabla_circ04<- rbind(tabla_circ04, circ04$data$sd[[5]]$sd[[1]])
tabla_circ04<- rbind(tabla_circ04, circ04$data$sd[[5]]$sd[[2]])
colnames(tabla_circ04) <- c("Candidato", "Partido", "Votos", "Porcentaje", "Candidatos", "Electo")
tabla_circ04$Circunscripcion <- "4"
tabla_circ04 <- tabla_circ04[,c(8,1,2,3,4)]

tabla_circ06<- data.frame(circ06$data$sd[[1]]$sd[[1]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[2]]$sd[[1]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[2]]$sd[[2]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[2]]$sd[[3]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[2]]$sd[[4]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[3]]$sd[[1]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[4]]$sd[[1]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[5]]$sd[[1]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[5]]$sd[[2]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[5]]$sd[[3]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[6]]$sd[[1]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[7]]$sd[[1]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[7]]$sd[[2]])
tabla_circ06<- rbind(tabla_circ06, circ06$data$sd[[8]])
colnames(tabla_circ06) <- c("Candidato", "Partido", "Votos", "Porcentaje", "Candidatos", "Electo")
tabla_circ06$Circunscripcion <- "6"
tabla_circ06 <- tabla_circ06[,c(8,1,2,3,4)]

tabla_circ09<- data.frame(circ09$data$sd[[1]]$sd[[1]])
tabla_circ09<- rbind(tabla_circ09, circ09$data$sd[[1]]$sd[[2]])
tabla_circ09<- rbind(tabla_circ09, circ09$data$sd[[2]]$sd[[1]])
tabla_circ09<- rbind(tabla_circ09, circ09$data$sd[[2]]$sd[[2]])
tabla_circ09<- rbind(tabla_circ09, circ09$data$sd[[2]]$sd[[3]])
tabla_circ09<- rbind(tabla_circ09, circ09$data$sd[[3]]$sd[[1]])
tabla_circ09<- rbind(tabla_circ09, circ09$data$sd[[4]]$sd[[1]])
tabla_circ09<- rbind(tabla_circ09, circ09$data$sd[[4]]$sd[[2]])
tabla_circ09<- rbind(tabla_circ09, circ09$data$sd[[5]]$sd[[1]])
tabla_circ09<- rbind(tabla_circ09, circ09$data$sd[[6]]$sd[[1]])
tabla_circ09<- rbind(tabla_circ09, circ09$data$sd[[6]]$sd[[2]])
colnames(tabla_circ09) <- c("Candidato", "Partido", "Votos", "Porcentaje", "Candidatos", "Electo")
tabla_circ09$Circunscripcion <- "9"
tabla_circ09 <- tabla_circ09[,c(8,1,2,3,4)]

tabla_circ11<- data.frame(circ11$data$sd[[1]]$sd[[1]])
tabla_circ11<- rbind(tabla_circ11, circ11$data$sd[[2]]$sd[[1]])
tabla_circ11<- rbind(tabla_circ11, circ11$data$sd[[3]]$sd[[1]])
tabla_circ11<- rbind(tabla_circ11, circ11$data$sd[[3]]$sd[[2]])
tabla_circ11<- rbind(tabla_circ11, circ11$data$sd[[3]]$sd[[3]])
tabla_circ11<- rbind(tabla_circ11, circ11$data$sd[[4]]$sd[[1]])
tabla_circ11<- rbind(tabla_circ11, circ11$data$sd[[5]]$sd[[1]])
tabla_circ11<- rbind(tabla_circ11, circ11$data$sd[[5]]$sd[[2]])
tabla_circ11<- rbind(tabla_circ11, circ11$data$sd[[5]]$sd[[3]])
tabla_circ11<- rbind(tabla_circ11, circ11$data$sd[[6]])
colnames(tabla_circ11) <- c("Candidato", "Partido", "Votos", "Porcentaje", "Candidatos", "Electo")
tabla_circ11$Circunscripcion <- "11"
tabla_circ11 <- tabla_circ11[,c(8,1,2,3,4)]

tabla_circ14<- data.frame(circ14$data$sd[[1]]$sd[[1]])
tabla_circ14<- rbind(tabla_circ14, circ14$data$sd[[2]]$sd[[1]])
tabla_circ14<- rbind(tabla_circ14, circ14$data$sd[[3]]$sd[[1]])
tabla_circ14<- rbind(tabla_circ14, circ14$data$sd[[4]]$sd[[1]])
tabla_circ14<- rbind(tabla_circ14, circ14$data$sd[[4]]$sd[[2]])
tabla_circ14<- rbind(tabla_circ14, circ14$data$sd[[4]]$sd[[3]])
tabla_circ14<- rbind(tabla_circ14, circ14$data$sd[[5]]$sd[[1]])
tabla_circ14<- rbind(tabla_circ14, circ14$data$sd[[6]]$sd[[1]])
tabla_circ14<- rbind(tabla_circ14, circ14$data$sd[[6]]$sd[[2]])
colnames(tabla_circ14) <- c("Candidato", "Partido", "Votos", "Porcentaje", "Candidatos", "Electo")
tabla_circ14$Circunscripcion <- "14"
tabla_circ14 <- tabla_circ14[,c(8,1,2,3,4)]


tabla_senadores<- tabla_circ01
tabla_senadores<- rbind(tabla_senadores,tabla_circ02)
tabla_senadores<- rbind(tabla_senadores,tabla_circ04)
tabla_senadores<- rbind(tabla_senadores,tabla_circ06)
tabla_senadores<- rbind(tabla_senadores,tabla_circ09)
tabla_senadores<- rbind(tabla_senadores,tabla_circ11)
tabla_senadores<- rbind(tabla_senadores,tabla_circ14)

tabla_senadores$Candidato <- sub('....', '', tabla_senadores$Candidato)


xlsx::write.xlsx(filter(tabla_senadores, Circunscripcion == 1),  file=paste("Votos_candidatos_circunscripciones", sub('...$', '',Sys.time()), ".xlsx", sep=""), sheetName = "Circunscripcion 1")
xlsx::write.xlsx(filter(tabla_senadores, Circunscripcion == 2),  file=paste("Votos_candidatos_circunscripciones", sub('...$', '',Sys.time()), ".xlsx", sep=""), sheetName = "Circunscripcion 2", append = T)
xlsx::write.xlsx(filter(tabla_senadores, Circunscripcion == 4),  file=paste("Votos_candidatos_circunscripciones", sub('...$', '',Sys.time()), ".xlsx", sep=""), sheetName = "Circunscripcion 4", append = T)
xlsx::write.xlsx(filter(tabla_senadores, Circunscripcion == 6),  file=paste("Votos_candidatos_circunscripciones", sub('...$', '',Sys.time()), ".xlsx", sep=""), sheetName = "Circunscripcion 6", append = T)
xlsx::write.xlsx(filter(tabla_senadores, Circunscripcion == 9),  file=paste("Votos_candidatos_circunscripciones", sub('...$', '',Sys.time()), ".xlsx", sep=""), sheetName = "Circunscripcion 9", append = T)
xlsx::write.xlsx(filter(tabla_senadores, Circunscripcion == 11), file=paste("Votos_candidatos_circunscripciones", sub('...$', '',Sys.time()), ".xlsx", sep=""), sheetName = "Circunscripcion 11", append = T)
xlsx::write.xlsx(filter(tabla_senadores, Circunscripcion == 14), file=paste("Votos_candidatos_circunscripciones", sub('...$', '',Sys.time()), ".xlsx", sep=""), sheetName = "Circunscripcion 14", append = T)

