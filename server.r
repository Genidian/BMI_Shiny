library(shiny)

CalculateBMI <- function(height, weight) weight/(height/100)^2

shinyServer(
  function(input, output) {
          output$oheight <- renderPrint({input$height})
          output$oweight <- renderPrint({input$weight})       
          output$BMI <- renderPrint({CalculateBMI(input$height, input$weight)})     
          }
)
