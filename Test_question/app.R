#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            # UI
            uiOutput("lien2")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    global <- list("url_atmo" = "http://www.atmo-grandest.eu/")


    output$lien2 <- renderUI({
        tags$a(href = global$url_atmo,
               # href = "http://www.atmo-grandest.eu/",
               target = "_blank",
               "Cliquer ici")
    })

    # output$lien_atmo <- renderText({
    #     global$url_atmo
    # }  )
}

# Run the application
shinyApp(ui = ui, server = server)

# reactiveValues


# server
