---
title       : Miles Per Gallon Predictor
subtitle    : Predicting through mtcars dataset
author      : Wa'el Farhan
job         : IT dude
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Predicting car gas consumption

The application is made to make the people aware of their car fuel consumption. And they will be able to compare car fuel consumption when buying new car.

This appllication predicts the miles per gallon. User will be able to enter the 4 different attributes (Weight, Number of Cylinders, Horsepower and transmission type either automatic or manual).

The system will then calculate the predicted miles per gallon based on linear regression model made on 'mtcars' dataset.

--- .class #id 

## How it operates
> - First, the application loads the mtcars dataset and fits a model for predicting car consumption based on 4 features: 
  - Weight (lb/1000)
  - Number of cylinders
  - Gross horsepower
  - Transmission (Automatic or Manual)

> - Second, it will allow the user to enter the 4 attributes for a specific car.

> - Finally, it will display the miles per gallon estimated for that car.

---
## Prediction Model

The model looks like this:

```r
model <- lm(mpg ~ wt + cyl + hp + am, data = mtcars)
model$coefficients
```

```
## (Intercept)          wt         cyl          hp          am 
##    36.14654    -2.60648    -0.74516    -0.02495     1.47805
```


The application will then work in reactive mode calculating consumption based on user input.

```r
c <- model$coefficients
c[1] + c[2] * input$wt + c[3] * input$cyl + c[4] * input$hp + c[5] * cond
```


---
## Summary
This simple application could be useful to anyone interested in buying a new car. It can be extended to include further features to make it more accurate.

### Thank you
