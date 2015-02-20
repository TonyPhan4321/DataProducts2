library(shiny)

bmi <- function(Weight, Height) Weight*703 / Height^2

shinyServer(
  function(input, output) {
    output$Weight <- renderPrint({input$Weight})
    output$Height <- renderPrint({input$Height})
    output$YourBMI <- renderPrint({bmi(input$Weight , input$Height)})
  }
)
