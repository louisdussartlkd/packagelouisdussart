#' Save csv files
#'
#' @param x path to the folder
#' @param file_name name of the file
#'
#' @return file name
#' @importFrom utils write.csv
#' @import prenoms
#' @import dplyr
#' @export

save_as_csv <- function(x, file_name) {
 assert_that(not_empty(file_name))
 assert_that(is.character(file_name))
 assert_that(is.data.frame(x))
 assert_that(has_extension(file_name, "csv"))
 assert_that(is.writeable(x))
 write.csv2(x,file_name)
 return(file_name)
}


