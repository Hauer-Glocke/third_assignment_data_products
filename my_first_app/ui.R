#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("BMW share price"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
    sliderInput("Date",
                "Pick the Time-Interval and see how the Graph adjusts:",
                min = 1,
                max = 5325,
                value = c(250, 5100)
  )),
    # Show a plot of the generated distribution
    mainPanel(
       h3("This is my shiny app, finished on the 28th of July"),     
       plotOutput("distPlot2"),
       h6("The data for the BMW share prices was retrieved from https://finance.yahoo.com/quote/BMW.DE/history?period1=847407600&period2=1501192800&interval=1d&filter=history&frequency=1d
")
    )
  )
))
