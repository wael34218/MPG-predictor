library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Milage Calculator"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      p("This appllication predicts the miles per gallon. User will be able to enter the 4 different attributes (Weight, Number of Cylinders, Horsepower and transmission type either automatic or manual)."),
      p("The system will then calculate the predicted miles per gallon based on linear regression model made on 'mtcars' dataset."),
      
      # Place the 4 input variables
      sliderInput("wt", "Weight (lb/1000)", 3, min=1.5, max=5.5),
      numericInput('cyl', 'Number of cylinders', 4, min=4, max=8, step=2),
      sliderInput('hp', 'Gross horsepower', 170, min=50, max=340, step=5),
      checkboxInput("am", "Transmission (Checked = Manual)", value = FALSE)
    ),
    
    mainPanel(
      # Display to the user what were the input
      h5("Weight (lb/1000)"),
      verbatimTextOutput("wt"),
      h5("Number of cylinders"),
      verbatimTextOutput("cyl"),
      h5("Gross horsepower"),
      verbatimTextOutput("hp"),
      h5("Transmission (Checked = Manual)"),
      verbatimTextOutput("am"),
      
      # Display the calculated Miles per Gallon
      h3("Miles/(US) gallon"),
      verbatimTextOutput("mpg")
    )
  )
))