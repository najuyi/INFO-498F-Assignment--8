library(shiny)
library(plotly)
data <- iris
source("scripts/build_graph.R")
# Takes in input from ui and generates output to the ui
shinyServer(function(input, output) {
  output$scatter <- renderPlotly({
    build_scatter(data, input$Petal, input$Sepal)
  })
  output$plot <- renderPlotly({
    build_3d(data, input$Petal, input$Sepal)
  })
  
})