#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$distPlot2 <- renderPlot({
          
          #Data
          library(readr)
          bmw <- read_csv("BMW.DE.csv")[c(1,5)]
          bmw$Close <- as.numeric(bmw$Close)
          bmw <- bmw[!is.na(bmw$Close),]
          
          #Plot
          minDate <- input$Date[1]
          maxDate <- input$Date[2]
          period <- bmw$Date[minDate:maxDate]
          temp <- bmw[bmw$Date %in% period,]
          plot(x = temp$Date, 
               y = temp$Close,
               type = "l",
               xlab = "Date",
               ylab = "Price BMW Share",
               main = "BMW Share Price Development")
  })
  
})
