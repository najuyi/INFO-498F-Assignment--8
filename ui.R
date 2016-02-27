library(shiny)
library(plotly)
data <- iris
# Parses out column names to be used in the shiny input select function
sepal <- colnames(data)[1:2]
petal <- colnames(data)[3:4]
# Decalres shinyui
shinyUI(fluidPage(
  titlePanel("Iris"),
  # Decalres the layout 
  sidebarLayout(
    # Placed widgets here
    sidebarPanel(
      "Iris Power",
      selectInput("Petal", label = h3("Petal"),
                  choices = petal, selected = "Petal.Length"),
      selectInput("Sepal", label = h3("Sepal"),
                  choices = sepal, selected = "Sepal.Length")
    ),
    # Put pretty stuff here I.E. graphs
    mainPanel(
      tabsetPanel(
        tabPanel("Scatter", plotlyOutput("scatter")),
        tabPanel("3D Plot", plotlyOutput("plot"))
      )
    )
  )
))
