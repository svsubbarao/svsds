library(shiny)

data <- read.csv("House Consumption.csv", sep=",", header=T)
colnames(data)[4] <- "Gas"
colnames(data)[7] <- "Electricity"
colnames(data)[10] <- "Water"

## Define a server for the Shiny app
shinyServer(function(input, output) {
  
  dataInput <- reactive({
    subset(data, select=c(input$energy), subset=(substring(data$Date,1,4) == input$year))
  })
  
  ## Fill in the spot we created for a plot
  output$plot1 <- renderPlot({
    
    ## Render a barplot
    barplot(dataInput()[,input$energy],
            main=paste(input$energy, "in", input$year),
            ylab="Consumption (in EUR)", ylim=c(0,80),
            xlab="Weeks (Jan to Dec)")
  })
})