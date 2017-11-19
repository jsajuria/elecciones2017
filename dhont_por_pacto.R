dHondt_pactos <- function(data, distrito){ 
  library(SciencesPo)
  library(dplyr)
a <- data %>% filter(., distrito ==distrito) %>% select(., pacto, votos_pacto, asientos_a_repartir) %>% group_by(pacto) %>% summarise_all(funs(mean))
b <- dHondt(parties = factor(a$pacto), votes = a$votos_pacto, seats=a$asientos_a_repartir)
return(b)
}
