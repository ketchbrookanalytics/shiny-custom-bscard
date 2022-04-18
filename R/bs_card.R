


# Let's create a custom Bootstrap (v5) card, like the ones here:
# https://getbootstrap.com/docs/5.1/components/card/#background-and-color

# Here's the HTML we want to replicate via Shiny code:

# <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
#   <div class="card-header">Header</div>
#     <div class="card-body">
#       <h5 class="card-title">Primary card title</h5>
#         <p class="card-text">Some quick example text.</p>
#   </div>
# </div>

bs_card <- function(font_color, bg_color, header_text, title_text, body_text) {
  
  shiny::div(
    class=glue::glue("card text-{font_color} bg-{bg_color} mb-3"), 
    style="max-width: 18rem;", 
    
    shiny::div(
      class="card-header", 
      header_text
    ), 
    
    shiny::div(
      class="card-body", 
      
      shiny::h5(
        class="card-title", 
        title_text
      ), 
      
      shiny::p(
        class="card-text", 
        body_text
      )
      
    )
    
  )
  
}
