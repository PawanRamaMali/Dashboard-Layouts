box::use(
  shiny[...],
)

#' @export
bs_card <- function(){
  div(
    class = "card text-white bg-card mb-3",
    style = "max-width:40rem;",
    
    div(
      class = "card-body",
      h5(
        class = "card-title",
        "Card Title"
      ),
      p(
        class = "card-text",
        "Example Text"
      )
    )
  )
}