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
    titlePanel("New Zealand Salary"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(numericInput(inputId = "salary", label = "Annual Salary", value = 60000), 
                     selectInput(inputId = "kiwisaver", label = "Kiwi Saver Rate", 
                                 choices = c(3, 4, 6, 9, 10), selected = 3, multiple = FALSE)
                    ),

        # Show a plot of the generated distribution
        mainPanel(
            textOutput("net"), textOutput("weekly")
            
        )
    )
))
