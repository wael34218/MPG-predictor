library(shiny)

# First create the regression model based on the 4 features in question.
model <- lm(mpg ~ wt + cyl + hp + am, data=mtcars)

# Extract coefficients
c <- model$coefficients

shinyServer(function(input, output) {
  
  # Update input values
  output$wt <- renderPrint({input$wt})
  output$cyl <- renderPrint({input$cyl})
  output$hp <- renderPrint({input$hp})
  output$am <- renderPrint({input$am})
  
  # Calculate and display Miles per gallon based on the model created.
  output$mpg <- renderPrint({
    if({input$am}){
      cond = 1
    }else{
      cond = 0
    }
    c[1] + c[2]*input$wt + c[3]*input$cyl + c[4]*input$hp + c[5]*cond
  })

})