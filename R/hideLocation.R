#' @title \code{hideLocation} Obfuscating the true location of the real data.
#'
#' @description Hides the true location of the data as a non-obvious calculation string.
#'
#'
#' @export hideLocation
#'
#' @param trueLoc A vector of one or more numbers in the set {1, 2, ..., nSubjects} whose locations are to be hidden.
#' @param nSubjects An integer larger than 1 used to define the set {1, 2, ..., nSubjects}.
#'
#' @return Returns a character vector, each element being a string
#' containing an obscure calculation which, if parsed and evaluated, would return
#' the value of the corresponding number in \code{trueLoc}.
#'
#' @seealso \code{\link{revealLocation}}
#'
#' @examples
#' trueLoc <- hideLocation(3,100)
#' trueLoc
#' revealLocation(trueLoc)
#'
#' n <- 200
#' trueLoc <- sample(1:n, 3)
#' trueLoc
#' ans <- hideLocation(trueLoc , n)
#' ans
#' revealLocation(ans)
#'
#' @export hideLocation
hideLocation <- function(trueLoc, nSubjects){
  if (!is.numeric(trueLoc)) stop(paste("trueLoc must be numeric in [1, nSubjects]"))
  if (!is.numeric(nSubjects)) stop(paste("nSubjects must be a number > trueLoc"))
  if (nSubjects < 2) stop(paste("nSubjects must be a positive integer >=  min(2, trueLoc)"))
  if (any(trueLoc <=0)) stop(paste("trueLoc must be a number in [1, nSubjects], not",
                                   trueLoc[trueLoc <=0], "\n\t"))
  if (any(trueLoc > nSubjects)) stop(paste("trueLoc must be a number in [1, nSubjects], here trueLoc =",
                                           trueLoc[trueLoc > nSubjects], ">", nSubjects, "= nSubjects.\n\t"))
  #
  # The obfuscation begins by choosing a base for the log
  #    - exclude even bases
  #    - base must be small enough to not trigger overflow (could look at )
  nLocs <- length(trueLoc)
  base <- sample(seq(3,11,2), nLocs, replace = TRUE)
  base <- base + 2 * (nSubjects %% base)
  offset <- sample(5:25, nLocs) + 0.5
  # return location information (trueLoc hidden)
  paste0("2^(log(",
         # log2 reduces exponent of base in case nSubjects was large
         base^(log2(trueLoc) + offset),
         ", base=", base,
         ") - ", offset,")"
  )
}

