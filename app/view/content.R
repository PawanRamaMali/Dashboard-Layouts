box::use(
  shiny[...],
  bslib[...],
)

box::use(
  app/view/card[...],
)

ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    theme = bs_theme(version = 5),
    fluidRow(
      column(3,
             bs_card(),
             bs_card()
      ),
      column(3,
             bs_card(),
             bs_card()
      ),
      column(3,
             bs_card(),
             bs_card()
      ),
      column(3,
             bs_card(),
             bs_card(),
             bs_card(),
             bs_card()
      )
    )
  )
}

server <- function(id) {
}
