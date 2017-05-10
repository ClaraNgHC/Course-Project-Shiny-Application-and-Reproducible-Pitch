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
  
  output$res1<- renderText({
    # USD exchange Rate base on the country selected dated as 22/4/2017
    USDMYR <- 4.40
    USDSGD <- 1.40
    USDBAHT <- 34.36
    USDAUD <- 1.33
    
    # Get value on the amount want to convent
    USDAmt <- input$num
    
    #Doing simple calculations
    if (input$Currency == 'MYR') 
      Result1 <- USDAmt * USDMYR
    if (input$Currency == 'SG')
      Result1 <- USDAmt * USDSGD
    if (input$Currency == 'Thai')
      Result1 <- USDAmt * USDBAHT
    if (input$Currency == 'AUS')
      Result1 <- USDAmt * USDAUD
    if (input$Currency == '0')
      Result1 <- 0
    
    paste("USD", USDAmt , " = ", Result1 ,input$Currency )
  })
  
  output$Select <- renderText({
    #Applying the full name for the currency
    if (input$Currency == 'MYR') 
      country2 <- "MYR = Malaysia Ringgit"
    if (input$Currency == 'SG')
      country2 <- "SGD = Singapore Dollar"
    if (input$Currency == 'Thai')
      country2 <- "BAHT = Thai Baht"
    if (input$Currency == 'AUS')
      country2 <- "AUD = Australian Dollar"
    if (input$Currency == '0')
      country2 <- "Null"
    
    paste(country2)
  })
  
  output$USD1 <- renderText({
    
    USDMYR <- 4.40
    USDSGD <- 1.40
    USDBAHT <- 34.36
    USDAUD <- 1.33
    
    # Get value on the amount want to convent
    USDAmt <- input$num
    
    #Picking the right amount
    if (input$Currency == 'MYR') 
      Result3 <- USDMYR
    if (input$Currency == 'SG')
      Result3 <- USDSGD
    if (input$Currency == 'Thai')
      Result3 <- USDBAHT
    if (input$Currency == 'AUS')
      Result3 <- USDAUD
    if (input$Currency == '0')
      Result3 <- 0
    
    #point back the country currency name
    if (input$Currency == 'MYR') 
      Countsign <- "MYR"
    if (input$Currency == 'SG')
      Countsign <- "SGD"
    if (input$Currency == 'Thai')
      Countsign <- "BAHT"
    if (input$Currency == 'AUS')
      Countsign <- "AUD"
    if (input$Currency == '0')
      Countsign <- 0
    
    paste("1 USD =  ", Result3 ,Countsign)
    
  })
  
  output$ResInfo <- renderText({
    USDMYR <- 4.40
    USDSGD <- 1.40
    USDBAHT <- 34.36
    USDAUD <- 1.33
    
    # Get value
    USDAmt <- input$num
    
    #Doing simple calculations
    if (input$Currency == 'MYR') 
      Result2 <- 1 / USDMYR
    if (input$Currency == 'SG')
      Result2 <- 1 / USDSGD
    Result1 <- USDAmt * USDSGD
    if (input$Currency == 'Thai')
      Result2 <- 1 / USDBAHT
    if (input$Currency == 'AUS')
      Result2 <- 1 / USDAUD
    if (input$Currency == '0')
      Result2 <- 0
    
    #point back the country currency name
    if (input$Currency == 'MYR') 
      Countsign <- "MYR"
    if (input$Currency == 'SG')
      Countsign <- "SGD"
    if (input$Currency == 'Thai')
      Countsign <- "BAHT"
    if (input$Currency == 'AUS')
      Countsign <- "AUD"
    if (input$Currency == '0')
      Countsign <- 0
    
    paste("1",Countsign , "= ", Result2 , "USD" )
  })
}) 
