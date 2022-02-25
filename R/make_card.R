


# Let's create a custom bootstrap card, like the ones here:
# https://getbootstrap.com/docs/5.1/components/card/#background-and-color

# Here's the HTML we want to replicate via Shiny code:

# <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
#   <div class="card-header">Header</div>
#     <div class="card-body">
#       <h5 class="card-title">Primary card title</h5>
#         <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
#   </div>
# </div>

# You may have seen people wrap the above text into a `shiny::HTML()` call, but 
# there is a much more elegant way to leverage the native functionality of Shiny
# to build HTML elements from scratch that are much easier to customize on-the-fly! 

# We can start out by just replicating the first card on the "Bootstrap" website,
# which is represented by the above HTML chunk.  We will write and test our Shiny
# code until it returns (in the console) output that exactly matches the above
# HTML 

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

# We can copy and paste the above code chunk into our app's UI (in `app.R`)


# Now that we have successfully replicated the "Primary" card, let's turn our
# Shiny code into a *dynamic* function that we can customize on-the-fly in our
# app

make_card <- function(font_color = "white", bg_style = "primary", 
                      header_text, body_title, body_text) {
  
  shiny::div(
    class = glue::glue("card text-{font_color} bg-{bg_style} mb-3"), 
    style = "max-width: 18rem;", 
    
    shiny::div(
      class = "card-header", 
      header_text
    ), 
    
    shiny::div(
      class = "card-body", 
      
      shiny::h5(
        class = "card-title", 
        body_title
      ), 
      
      shiny::p(
        class = "card-text", 
       body_text
      )
      
    )
    
  )
  
}
