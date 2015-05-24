library(shiny)

disc <- function(a,b,c) b^2-4*a*c

x <- function(a,b,c) -b/(2*a)
xa <- function(a,b,c) (-b + sqrt(b^2-4*a*c))/(2*a)
xb <- function(a,b,c) (-b - sqrt(b^2-4*a*c))/(2*a)

shinyServer(
  function(input, output) {
    output$oa <- renderPrint({input$a})
    output$ob <- renderPrint({input$b})
    output$oc <- renderPrint({input$c})
    
  
    output$sol <- renderText({
      if (input$a == 0) "This is not a quadratic equation!"
      else if (disc(input$a, input$b, input$c)<0) "There is no solution."
      else if (disc(input$a, input$b, input$c) == 0) "There is one solution."
      else "There is two solution."
    })
    
    output$sol2 <- renderText({
      if (input$a == 0) "This is not a quadratic equation!"
      else if (disc(input$a, input$b, input$c)<0) "There is no solution."
      else if (disc(input$a, input$b, input$c) == 0) x(input$a, input$b, input$c)
      else xa(input$a, input$b, input$c)
    })
    
    output$sol3 <- renderText({
      if (input$a == 0) "This is not a quadratic equation!"
      else if (disc(input$a, input$b, input$c)<0) "There is no solution."
      else if (disc(input$a, input$b, input$c) == 0) x(input$a, input$b, input$c)
      else xb(input$a, input$b, input$c)
    })
    
  }
)
