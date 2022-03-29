#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(ggpubr)
library(DT)

yeast_data <- read_tsv("yeast_rnaseq.tsv")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Yeast RNA-seq data"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            selectInput("sample1",
                         label = "Pick sample 1",
                         choices = colnames(yeast_data)[-1]
                
            ),
            selectInput("sample2",
                        label = "Pick sample 2",
                        choices = colnames(yeast_data)[-1]
                        
            ),
            sliderInput("rnaseqbin",
                        label = "Sample 1 histogram",
                        min = 10,
                        max = 100,
                        value = 50)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            tabsetPanel(
                tabPanel(title = "Histogram", plotOutput("rnaseqhistPlot")),
                tabPanel(title = "Scatterplot", plotOutput("scatterPlot")),
                tabPanel(title = "TPM Data", DTOutput("table"))
            )
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$rnaseqhistPlot <- renderPlot(
        ggplot(data = yeast_data, aes(x = !!sym(input$sample1))) +
            geom_histogram(bins = input$rnaseqbin) +
            scale_x_log10() +
            labs(x = "TPM values", y = "Frequency") +
            theme_pubr()
    )
    
    output$scatterPlot <- renderPlot(
        ggplot(data = yeast_data, aes(x = !!sym(input$sample1), y = !!sym(input$sample2))) +
            geom_point() +
            scale_x_log10() +
            scale_y_log10() +
            labs(x = paste(input$sample1, "TPM", sep = " "), y = paste(input$sample2, "TPM", sep = " ")) +
            theme_pubr() +
            stat_cor()
    )
    
    output$table <- renderDT(
        yeast_data
    )
}

# Run the application 
shinyApp(ui = ui, server = server)













