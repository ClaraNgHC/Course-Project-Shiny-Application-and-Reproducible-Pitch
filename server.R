#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# To do a simple calculations
shinyServer(function(input, output) {
   
  
  output$res1<- renderPrint({
    # USD exchange Rate base on the country selected dated as 22/4/2017
    USDMYR <- 4.40
    USDSGD <- 1.40
    USDBAHT <- 34.36
    USDAUD <- 1.33
    
    # Get value on the amount want to convent
    USDAmt <- input$num
    
    #Doing simple calculations
    if (input$Currency == 'RM') 
      Result1 <- USDAmt * USDMYR
    if (input$Currency == 'SG')
      Result1 <- USDAmt * USDSGD
    if (input$Currency == 'Thai')
      Result1 <- USDAmt * USDBAHT
    if (input$Currency == 'AUS')
      Result1 <- USDAmt * USDAUD
 
    list(Converted = Result1)
  
  })
  
  output$Select <- renderPrint({
    if (input$Currency == 'RM') 
      Result2 <- "Malaysia Ringgit (MYR)"
    if (input$Currency == 'SG')
      Result2 <- "Singapore Dollar (SGD)"
    if (input$Currency == 'Thai')
      Result2 <- "Thai Baht (BAHT)"
    if (input$Currency == 'AUS')
      Result2 <- "Australian Dollar (AUD)"
    
    #print country 
    list(Country = Result2)
  })
  
  output$USD1 <- renderPrint({
    # Get value
    USDAmt <- input$num
    
    list(USD = USDAmt)
  })
  
})