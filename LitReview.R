# SWISLR Literature Review Codes
# KLO 
# 10/09/24

library(VennDiagram)
library(eulerr)

# Would love to figure out how to use the Scopus and WoS API here...



# Venn Diagrams using Scopus searches (manuel searches for now)

VennAll <- c("Climate Change" = 462488, "Sea Level Rise" = 23866, "Saltwater Intrusion" = 2568, 
             "Climate Change&Sea Level Rise" = 9281, "Climate Change&Saltwater Intrusion" = 485, "Sea Level Rise&Saltwater Intrusion" = 489,
             "Climate Change&Sea Level Rise&Saltwater Intrusion" = 267)

VennAll <- c("Climate Change" = 462488, "Sea Level Rise" = 23866, "Saltwater Intrusion" = 2568, 
             "Climate Change&Sea Level Rise" = 9281, "Climate Change&Saltwater Intrusion" = 485, "Sea Level Rise&Saltwater Intrusion" = 489,
             "Climate Change&Sea Level Rise&Saltwater Intrusion" = 267,
             "People1&Climate Change" = 129451, "People2&Sea Level Rise" = 5109, "People3&Saltwater Intrusion" = 309)


VennPeople <- c("ClimateChange" = 129451, "SeaLevelRise" = 5109, "SaltwaterIntrusion" = 309, 
                "ClimateChange&SeaLevelRise" = 2640, "ClimateChange&SaltwaterIntrusion" = 98, "SeaLevelRise&SaltwaterIntrusion" = 67,
                "ClimateChange&SeaLevelRise&SaltwaterIntrusion" = 48)
  

fit1 <- euler(VennAll)

plot(fit1, fill = c("#61D04F", "#2297E6", "#F5C710"), alpha = 0.6, legend = TRUE, quantities = TRUE)

fit2 <- euler(VennPeople)
plot(fit2, fill = c("#61D04F", "#2297E6", "#F5C710"), alpha = 0.6, legend = TRUE, quantities = TRUE)

# Since we didn't use Scopus API in the bass connections, upload the data here...




