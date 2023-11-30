#' Check Even or Odd
#'
#' This function checks whether a given number is even or odd.
#'
#' @param n An integer.
#' @return A character indicating "even" or "odd".
#' @export
#' @examples check_even_odd(5)
#'
#'

check_even_odd <- function(n) {
  if (n %% 2 == 0) {
    return("even")
  } else {
    return("odd")
  }
}
