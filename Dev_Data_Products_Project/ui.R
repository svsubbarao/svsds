library(shiny)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(
    
    # Give the page a title
    titlePanel("Price of Gas / Electricity / Water Consumption over one year"),
    
    # Generate a row with a sidebar
    sidebarLayout(
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("energy", "Type of energy:",
                    choices=c("Gas", "Electricity", "Water")),
        selectInput("year", "Year:",
                    choices=c("2012", "2013", "2014","2015")),
        hr(),
        helpText("Select the type of energy and the year to get the appropriate bar plot.")),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("plot1")))))