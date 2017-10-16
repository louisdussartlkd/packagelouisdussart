#' Draw a name
#'
#' @param pren the name you are analysing
#' @param s the sex
#'
#' @return the chart of two names
#' @export


draw_a_name <- function(pren = "Vincent", s = "M") {
  assert_that(is.character(pren))
  assert_that(is.character(s))

  ggplot(prenoms %>%
           filter(name == pren, sex ==s) %>%
           group_by(year) %>%
           summarize(Total = sum(n)),
         aes(year,Total)) + geom_line() + ggtitle(paste("Number of ",pren," in time"))
}

