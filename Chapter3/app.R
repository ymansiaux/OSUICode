library(shiny)
# we create the card function before
my_card <- function(...) {
    withTags(
        div(
            class = "card border-success mb-3",
            div(class = "card-header bg-transparent border-success"),
            div(
                class = "card-body text-success",
                h3(class = "card-title", "title"),
                p(class = "card-text", ...)
            ),
            div(
                class = "card-footer bg-transparent border-success",
                "footer"
            )
        )
    )
}

bs4_cdn <- "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/"
bs4_css <- paste0(bs4_cdn, "css/bootstrap.min.css")

# we build our app
shinyApp(
    ui = fluidPage(
        # load the css code
        tags$head(
            tags$link(
                rel = "stylesheet",
                type = "text/css",
                href = bs4_css)
        ),
        fluidRow(
            column(
                width = 6,
                align = "center",
                br(),
                my_card("Card Content")
            )
        )
    ),
    server = function(input, output) {}
)
