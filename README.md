# Dashboard-Layouts

Create different Dashboard Layouts in R Shiny

## R Shiny Approach

R Shiny is a web application framework for R that allows you to create interactive dashboards. In this example, I'll explore how to create different dashboard layouts in R Shiny using sidebar layouts, tabsets, and fluid rows and columns.

#### Prerequisites:

- Basic understanding of R programming.
- R and RStudio installed on your system.
- Shiny package installed in R. You can install it by running install.packages("shiny") in RStudio.

Let's begin by creating a simple Shiny app with different layouts.

1. Create a new Shiny app:

In RStudio, go to File > New File > Shiny Web App. Enter a name for your app and choose a directory to save it. This will create a new Shiny app with ui.R and server.R files.

2. Set up the sidebar layout:

Open ui.R file and replace its content with the following code:

```r
library(shiny)

fluidPage(
  titlePanel("Different Dashboard Layouts"),
  
  # Sidebar layout
  sidebarLayout(
    sidebarPanel(
      h3("Sidebar"),
      sliderInput("obs", "Number of observations:", min = 1, max = 1000, value = 500)
    ),
    mainPanel(
      h3("Main Panel"),
      plotOutput("scatterPlot")
    )
  )
)
```
This code creates a simple sidebar layout with a sidebar containing a slider input and a main panel displaying a scatter plot.

3. Add a tabset layout:

To add tabs to your dashboard, modify the mainPanel as follows:

```r
mainPanel(
  h3("Main Panel"),
  tabsetPanel(
    tabPanel("Scatter Plot", plotOutput("scatterPlot")),
    tabPanel("Summary", verbatimTextOutput("summary")),
    tabPanel("Table", tableOutput("table"))
  )
)
```
This code adds a tabset panel with three tabs: a scatter plot, a summary, and a table.

4. Add fluid rows and columns:

Fluid rows and columns allow you to create responsive and flexible layouts. Replace the sidebarLayout with the following code:

```r
fluidRow(
  column(4,
         h3("Sidebar"),
         sliderInput("obs", "Number of observations:", min = 1, max = 1000, value = 500)
  ),
  column(8,
         h3("Main Panel"),
         tabsetPanel(
           tabPanel("Scatter Plot", plotOutput("scatterPlot")),
           tabPanel("Summary", verbatimTextOutput("summary")),
           tabPanel("Table", tableOutput("table"))
         )
  )
)
```
This code creates a fluid layout with two columns, where the sidebar takes up 4/12 of the width and the main panel takes up the remaining 8/12.

5. Update server.R:

Now, let's add some functionality to our dashboard. Replace the content of server.R with the following code:

```r
library(shiny)

function(input, output) {
  output$scatterPlot <- renderPlot({
    plot(rnorm(input$obs), rnorm(input$obs))
  })
  
  output$summary <- renderPrint({
    summary(rnorm(input$obs))
  })
  
  output$table <- renderTable({
    data.frame(x = rnorm(input$obs), y = rnorm(input$obs))
  })
}
```
This code generates a scatter plot, a summary, and a table based on the input from the slider.

6. Run the Shiny app:

In RStudio, click on the "Run App" button, and
