library(shiny)
library(datasets)
library(ggplot2)
fit <- lm(mpg~hp+wt, data=mtcars)


shinyServer(
  function(input, output){
    output$hpPlot = renderPlot({
      ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point(shape=1) 
    })
    output$wtPlot = renderPlot({
      ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(shape=1) 
    })
  }
  
  
)