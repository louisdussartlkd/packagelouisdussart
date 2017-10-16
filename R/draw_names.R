#' Draw names
#'
#' @param pren the two names which will be plotted defaulted to Pierre and Paul
#'
#' @return draws the chart representing the historic trend of two names
#' @export


draw_names <- function(pren = c("Pierre","Paul")) {

  assert_that(is.character(pren))

  ggplot(prenoms %>%
           filter(name %in% pren) %>%
           group_by(name,year) %>%
           summarize(Total = sum(n)),
         aes(year,Total,group = name, colour = name)) + geom_line() + ggtitle(paste(pren," ",collapse = ''))
}
