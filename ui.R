#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Simple currency exchange"),
  
  # Sidebar to select the country and also the amount wanted to convert
  sidebarLayout(
    sidebarPanel(
        h3("USD excharge rate as at 22/4/2017"),
    
        selectInput("Currency", "Currency:",
                   c("Malaysia Ringgit" = "RM",
                     "Singapore Dollar" = "SG",
                     "Thai Baht" = "Thai",
                     "Australian Dollar" = "AUS",choices = NULL)),
        numericInput("num", "How much USD you would like to convert?",
                    value = 0,min = 1),
 
        submitButton("Submit")
    ),
    
    
                
    # Show the result of the converted amount
    mainPanel(
       helpText('USD = United States Dollar'),
       verbatimTextOutput('USD1'),
       helpText('TO'),
       verbatimTextOutput('Select'),
       verbatimTextOutput('res1')
    )
  )
))
