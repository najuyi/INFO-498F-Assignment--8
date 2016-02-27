library(plotly)
library(dplyr)

build_graph <- function(dataset, x1, y1){
  return (plot_ly(data = dataset, x = paste0(dataset, "$", x1), y = paste0(dataset, "$", y1), mode = "markers", color = Species))
}