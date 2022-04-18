library(shiny)
library(glue)
library(bslib)

source("R/bs_card.R")

ui <- shiny::fluidPage(
  
  theme = bslib::bs_theme(
    version = 5  # use Bootstrap version 5
  ), 
  
  shiny::fluidRow(
    
    shiny::h1("Building Custom Bootstrap Cards with Shiny"), 
    
    shiny::hr(), 
    
    shiny::column(
      width = 4, 
      
      # First let's re-create the example on the "Bootstrap" website by hand
      shiny::h3("Card 1 Goes Here"),
      
      # Our custom function to create a fancy *Bootstrap* card
      bs_card(
        font_color = "black", 
        bg_color = "warning", 
        header_text = "Appsilon Conf 2022", 
        title_text = "Check it out!", 
        body_text = "We just built an awesome Bootstrap card in Shiny"
      )
      
    )
    
  )
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)