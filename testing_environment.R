rm(list = ls())
cat("\f")

library(devtools)
install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')
library(slidify)


author("Ramon Roales-Welsch")

slidify("index.Rmd")
browseURL("index.html")

publish('Ramon Roals-Welsch', 'Hauer-Glocke')

download("https://github.com/Hauer-Glocke/third_assignment_data_products/blob/master/my_first_app/BMW.DE.csv")

bmw_try <-read_csv(url("https://raw.githubusercontent.com/Hauer-Glocke/third_assignment_data_products/master/my_first_app/BMW.DE.csv"))

#https://hauer-glocke.shinyapps.io/my_first_app/


author('Third Assignment')
