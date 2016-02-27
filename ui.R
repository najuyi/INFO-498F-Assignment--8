library(shiny)
library(plotly)
data <- iris
sepal <- colnames(data)[1:2]
petal <- colnames(data)[3:4]
shinyUI(fluidPage(
  titlePanel("Iris"),
  # Decalres the layout 
  sidebarLayout(
    # Place widgets here
    sidebarPanel(
      "Iris Power",
      selectInput("Petal", label = h3("Petal"),
                  choices = petal, selected = "Petal.Length"),
      selectInput("Sepal", label = h3("Sepal"),
                  choices = sepal, selected = "Sepal.Length")
    ),
    # Put pretty stuff here I.E. graphs
    mainPanel(
      "Big Iris",
      plotlyOutput('iris')
    )
  )
))