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
                  c("Please select" = "0",
                    "Malaysia Ringgit" = "MYR",
                    "Singapore Dollar" = "SG",
                    "Thai Baht" = "Thai",
                    "Australian Dollar" = "AUS")),
      numericInput("num", "How much USD you would like to convert?",
                   value = 0,min = 1),
      
      submitButton("Submit")
    ),
    
    
    
    # Show the result of the converted amount
    mainPanel(
      img(src="USflag.jpg", height = 120, width = 120),
      img(src="msiaflag.jpg", height = 100, width = 100),
      img(src="SGflag.jpg", height = 100, width = 100),
      img(src="Thaiflag.jpg", height = 100, width = 125),
      
      h1(textOutput('res1')),
      br(),
      helpText(  
        h3("Breakdown")),
      h3(textOutput('USD1')),
      h3(textOutput('ResInfo')),
      
      br(),
      helpText(  
        h3("Info:")),
      helpText( 
        h4("USD = United States Dollar ")),
      h4(textOutput('Select'))
      
      
      
      
    )
  )
))
