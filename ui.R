library(shiny)
shinyUI(fluidPage(
  titlePanel("Yahoo Finance Gold Futures"),
  sidebarLayout(
    sidebarPanel(
      textInput
      dateRangeInput("dates",
        "Date range",
        start = "2017-01-27",
        end = as.character(Sys.Date())),
      checkboxInput("log", "Plot y axis on log scale",
        value = FALSE),
      checkboxInput("adjust",
        "Adjust prices for inflation", value = FALSE)
    ),
    mainPanel(plotOutput("plot"))
  )
))
