library(plotly)
library(dplyr)
# Builds the scatter plot
build_scatter <- function(dataset, x1, y1){
  return(plot_ly(data = dataset, x = paste0(dataset[, x1, ]), y = paste0(dataset[, y1, ]), mode = "markers", color = Species)) %>% 
    layout(xaxis = list(title = "Petal"), yaxis = list(title = "Sepal"))
}
# Builds the 3d scatter
build_3d <- function(dataset, x2, y2){
  Petal = paste0(dataset[, x2, ])
  Sepal = paste0(dataset[, y2, ])
  return(plot_ly(data = dataset, x = Petal, y = Sepal, z = Species, mode = "markers", type = "scatter3d", color = Species))
}