library(dplyr)
library(shiny)
library(plotly)
data <- iris
source("C:/Users/Administrator.UWIT-H9T8A7AKQR/Documents/Code/INFO 498F/INFO-498F-Assignment--8/scripts/build_graph.r")

shinyServer(function(input, output) {
  output$iris <- renderPlotly({
    build_graph(data, input$Petal, input$Sepal)
  })
})