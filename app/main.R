box::use(
  shiny[bootstrapPage, moduleServer, NS, renderText, tags, textOutput, div],
  imola[flexPanel]
)

box::use(
  app/view/content,
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  div(
    style = "margin-top:10px",
    content$ui(id = ns("content"))
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
