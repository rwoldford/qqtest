#' @title \code{dkay} The density function of the K distribution
#'
#' @description The K density function on \code{df} degrees of freedom and non-centrality parameter \code{ncp}.
#'
#'    A K distribution is the square root of a chi-square divided by its degrees of freedom.  That is, if x is chi-squared on m degrees of freedom, then y = sqrt(x/m) is K on m degrees of freedom.
#'    Under standard normal theory, K is the distribution of the pivotal quantity  s/sigma where s is the sample standard deviation and sigma is the standard deviation parameter of the normal density.  K is the natural distribution for tests and confidence intervals about sigma.
#'    K densities are more nearly symmetric than are chi-squared and concentrate near 1.  As the degrees of freedom increase, they become more symmetric, more concentrated, and more nearly normally distributed.
#'
#'
#'
#' @export dkay
#'
#' @param x A vector of values at which to calculate the density.
#' @param df Degrees of freedom (non-negative, but can be non-integer).
#' @param ncp Non-centrality parameter (non-negative).
#' @param log.p logical; if \code{TRUE}, probabilities are given as log(p).
#'
#' @return \code{dkay} gives the density evaluated at the values of \code{x}.
#'
#' Invalid arguments will result in return value NaN, with a warning.
#'
#' The length of the result is the maximum of the lengths of the numerical arguments for the other functions.
#'
#' The numerical arguments are recycled to the length of the result. Only the first elements of the logical arguments are used.
#'
#'
#' @note All calls depend on analogous calls to chi-squared functions.  See \code{dchisq} for details on non-centrality parameter calculations.
#'
#'
#' @examples
#'
#' dkay(1, 20)
#' #
#' # See also the vignette on the "K-distribution"
#' #
dkay <- function(x, df, ncp=0, log.p = FALSE) {
				chi <- df * x^2
				chincp <- df * ncp^2
				fchi <- dchisq(chi, df, chincp, log.p)
				2 * df * x * fchi
				}