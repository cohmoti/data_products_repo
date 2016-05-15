library(shiny)


shinyUI(fluidPage(
  
  titlePanel("Developing data products course project : car mpg prediction"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("hp",
                  "Horsepower:",
                  min = 50,
                  max = 300,
                  value = 100),
      sliderInput("wt",
                  "Weight(lbs)",
                  min = 1500,
                  max = 6000,
                  value = 3000)
    ),
    mainPanel(
      h1("Site Documentation:"),
      p("In this site I am performing a simple analysis on the mtcars data set. I have built a linear model that predicts mpg of a car based on the engine's horsepower and the car wight."),
      p("To use the prediction you should select on the slidebars the horsepowers and car wight and click on the predict button."),
      br(),
      p("To show the motivation for this model, I am attaching two scatter plots, one for mpg vs weight and one for mpg vs horsepower."),
      p("mpg vs horsepower:"),
      plotOutput("hpPlot"),
      p("mpg vs weight:"),
      plotOutput("wtPlot")
    )
  )
))