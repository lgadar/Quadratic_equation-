library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Solutions to quadratic equations"),
  sidebarPanel(
    
    h4(withMathJax("$$a*x^2 + b*x + c = 0$$")),
    
    numericInput("a", "a=", 1),
    numericInput("b", "b=", 0),
    numericInput("c", "c=", 0),
    submitButton('Submit'),
    
    h2("How does it work?"),
      
    h4("Step 1"),
    p("Recognize a, b, c of your equation."),
    
    h4("Step 2"),
    p("Fill the a, b, c values into side bar panel. Dont't forget to write (-) if you have negative value."),
    
    h4("Step 3"),
    p("Push the 'Submit' button."),
    
    h4("Step 4"),
    p("Check bellow you wanted to write this values."),
    
    h4("Step 5"),
    p("Get the x values of your equation.")
        
  ),
  mainPanel(
    
    
    
    h2("Your a, b, c values are"),
    h4("a"),
    verbatimTextOutput("oa"),
    h4("b"),
    verbatimTextOutput("ob"),
    h4("c"),
    verbatimTextOutput("oc"),
    
    h2("Number of solutions"),
    verbatimTextOutput("sol"),
    
    h2("x1="),
    verbatimTextOutput("sol2"),
    
    h2("x2="),
    verbatimTextOutput("sol3")

   
    
    
  )
))
