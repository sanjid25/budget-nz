#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    output$net <- renderText(paste0("$", round((1 - as.numeric(input$kiwisaver) / 100) * input$salary, 2)))
    output$weekly <- renderText(paste0("$", round(input$salary / 52, 2)))
})
