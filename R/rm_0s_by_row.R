#' Removing zeros from a specified matrix by row
#'
#' This function removes all zeros by row from the matrix;
#' `set.seed(123)`
#' `x = matrix(rpois(100, 0.1), 10, 10)`
#'
#'
#'
#' @param mat Input matrix
#' @return Matrix with rows containing all 0s removed
#' @export
#' @examples
#' mat <- matrix(c(0, 1, 0, 0, 0, 2, 0, 3, 0), ncol = 3)
#' rm_0s_by_row(mat)

rm_0s_by_row <- function(mat) {
  rows_to_keep <- rowSums(mat != 0) > 0
  return(mat[rows_to_keep, , drop = FALSE])
}
