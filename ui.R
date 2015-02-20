library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Body Mass Index Calculator"),
  sidebarPanel(
  	numericInput('Weight', 'Weight (lb)', 190),
  	numericInput('Height', 'Height (in)', 72),
  	submitButton('Submit')
  	
),
  mainPanel(
        h4('Your weight:'),
        verbatimTextOutput("Weight"),
        h4('Your height:'),
        verbatimTextOutput("Height"),
        h4('Your Body Mass Index:'),
        verbatimTextOutput("YourBMI")
        
  )
))
