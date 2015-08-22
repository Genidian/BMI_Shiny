library(shiny)
shinyUI(pageWithSidebar(
   headerPanel("Body Mass Index (BMI) Calculation"),
   sidebarPanel(
        h3('Please input your height and weight here'),
        numericInput('height', 'Your height (cm)', 
                     170, min=100, max=220, step=1),
        numericInput('weight', 'Your weight (kg)',
                     65, min=40, max=150, step=1)
        ),
        mainPanel(
                h3('Your BMI calculations here'),
                h4('Your height'),
                verbatimTextOutput("oheight"),
                h4('Your weight'),
                verbatimTextOutput("oweight"),
                h4('Your BMI'),
                verbatimTextOutput("BMI"),
                h4('As a rule of thumb:'),
                h4('BMI <= 18.5 : Underweight'),
                h4('BMI between 18.5 and 24.9 : Normal weight'),
                h4('BMI between 25 and 29.9 : Overweight'),
                h4('BMI >= 30 : Get Help')
                )
        )
)