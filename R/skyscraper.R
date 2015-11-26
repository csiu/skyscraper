#' Skyscraper data
#'
#' 100 Tallest Completed Buildings in the World (as of 2015-11-25)
#'
#' @format A tbl_df with 100 rows and 9 variables :
#' \itemize{
#' \item rank (int)
#' \item building_name (chr)
#' \item city (fctr)
#' \item height_m (dbl)
#' \item height_ft (dbl)
#' \item floors (int)
#' \item year_completed (int)
#' \item material (fctr)
#' \item use (chr)
#' }
#' @source \url{http://www.skyscrapercenter.com/buildings}
#' @examples
#' str(skyscraper)
#' head(skyscraper)
#' plot(height_m ~ year_completed, skyscraper, subset = year_completed > 2005)
"skyscraper"
