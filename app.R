library(shiny)
library(glue)
library(bslib)

source("R/make_card.R")

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
      shiny::div(
        class = "card text-white bg-primary mb-3", 
        style = "max-width: 18rem;", 
        
        shiny::div(
          class = "card-header", 
          "Header"
        ), 
        
        shiny::div(
          class = "card-body", 
          
          shiny::h5(
            class = "card-title", 
            "Primary card title"
          ), 
          
          shiny::p(
            class = "card-text", 
            "Some quick example text to build on the card title and make up the bulk of the card's content."
          )
        )
        
      )
      
    ), 
    
    shiny::column(
      width = 4, 
      
      # Now let's try using our custom function
      make_card(
        font_color = "black", 
        bg_style = "warning", 
        header_text = "Second Card", 
        body_title = "Here's a title", 
        body_text = "Turning the code to build this card into a custom function saves so much time!"
      )
      
    )
    
  )
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)