#' Fibonacci Sequence
#'
#' This function generates the Fibonacci sequence up to a specified number of terms.
#'
#' @param n An integer specifying the number of terms in the sequence.
#' @return A numeric vector containing the Fibonacci sequence.
#' @export
#' @examples fibonacci_sequence(10)
#'
#'

fibonacci_sequence <- function(n) {
  if (n <= 0) {
    stop("Number of terms should be a positive integer.")
  }

  if (n == 1) {
    return(0)
  } else if (n == 2) {
    return(c(0, 1))
  } else {
    fib_seq <- numeric(n)
    fib_seq[1:2] <- c(0, 1)

    for (i in 3:n) {
      fib_seq[i] <- fib_seq[i - 1] + fib_seq[i - 2]
    }

    return(fib_seq)
  }
}
