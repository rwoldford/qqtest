#' @title \code{revealLocation} Revealing locations encoded as a string calculation.
#'
#' @description Reveals the location by parsing and evaluating the string.
#'
#'
#' @export revealLocation
#'
#' @param hiddenLocation A character vector of calculation strings.
#'
#' @return Returns the value of the each calculation.
#'
#' @seealso \code{\link{hideLocation}}
#'
#' @examples
#' trueLoc <- hideLocation(3,100)
#' trueLoc
#' revealLocation(ans)
#'
#' n <- 200
#' trueLoc <- sample(1:n, 3)
#' trueLoc
#' ans <- hideLocation(trueLoc , n)
#' ans
#' revealLocation(ans)
#'
#' @export revealLocation
#'
revealLocation <- function(hiddenLocation){
  nLocs <- length(hiddenLocation)
  # parse and evaluate the text
  sapply(1:nLocs, FUN = function(i) {eval(parse(text = hiddenLocation[i]))}
  )
}
