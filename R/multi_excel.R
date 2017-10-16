#' Read multiple excel files
#'
#' @param file file with excel sheets
#'
#' @return a list
#' @export


multi_excel <- function(file) {
  assert_that(is.character(file))
  all_sheets <- readxl::excel_sheets(file)
  assert_that(not_empty(all_sheets))
  result <- lapply(all_sheets, function(sheet) {
  readxl::read_excel(file, sheet = sheet)
  })
  return(result)
}
