# Building Custom Bootstrap Cards with Shiny

This repository contains the materials associated with [Michael Thomas'](https://www.linkedin.com/in/michaeljthomas2/) tutorial, *"Building Custom Bootstrap Cards with Shiny"* at the [2022 Appsilon Shiny Conference](https://hopin.com/events/shinyconference2022#schedule).

## Purpose

The goal of the tutorial is to teach learners how to translate HTML + CSS code into R code via the `{shiny}` family of functions that map directly to HTML tags.

At the end of the tutorial, users should be comfortable seeing a chunk of HTML code (e.g., `<h3>Hello World</h3>`) and generating the R code equivalent (in this case, `shiny::h3("Hello World")`).

## Installation

1.  Clone this repository to your local machine

2.  Open the [shiny-custom-bscard.Rproj](shiny-custom-bscard.Rproj) file
    from the directory on your local machine where you cloned this
    repository. This should install the {renv} package if you do not
    already have it installed, but if you don’t see that happen in the
    console, run `install.packages("renv")`.

3.  Run `renv::restore()` to install the package dependencies needed to
    run this app successfully

4.  Open the [app.R](app.R) file and execute the code in that script to
    launch the app
    
## Interested in Learning More?

Contact us at [info@ketchbrookanalytics.com](mailto:info@ketchbrookanalytics.com?subject=Shiny).

## Session Info

```
sessionInfo()
#> R version 4.1.1 (2021-08-10)
#> Platform: x86_64-w64-mingw32/x64 (64-bit)
#> Running under: Windows 10 x64 (build 19044)
#> 
#> Matrix products: default
#> 
#> locale:
#> [1] LC_COLLATE=English_United States.1252 
#> [2] LC_CTYPE=English_United States.1252   
#> [3] LC_MONETARY=English_United States.1252
#> [4] LC_NUMERIC=C                          
#> [5] LC_TIME=English_United States.1252    
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices datasets  utils     methods   base     
#> 
#> loaded via a namespace (and not attached):
#>  [1] Rcpp_1.0.8       digest_0.6.29    later_1.3.0      mime_0.12       
#>  [5] R6_2.5.1         jsonlite_1.8.0   lifecycle_1.0.1  xtable_1.8-4    
#>  [9] magrittr_2.0.2   rlang_1.0.1      renv_0.15.2      promises_1.2.0.1
#> [13] jquerylib_0.1.4  bslib_0.3.1      ellipsis_0.3.2   tools_4.1.1     
#> [17] glue_1.6.2       shiny_1.7.1      httpuv_1.6.5     fastmap_1.1.0   
#> [21] compiler_4.1.1   htmltools_0.5.2  sass_0.4.0
```
