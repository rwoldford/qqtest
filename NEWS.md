
# qqtest 1.2.0 

## Background

Previous releases depended upon the `lmRob()` function from the `robust` package.  This package became orphaned on CRAN, archived, and removed. Consequently, the dependency needed to be addressed for ``qqtest`.

This was not done in time for `R` core policy, so `qqtest` was removed from CRAN. 

Release 1.2.0 remedies this and adds some functionality. There are now no dependencies beyond base packages `grDevices`, `graphics`, and `stats`.


## Changes

When `lineup = TRUE` the value returned by `qqtest()` is now just a string containing an obfuscated location of the true data.  It is no longer a list with a single names component `trueLoc`.

## New functionality

- a new argument `matchMethod` now offers several choices for matching location and scale of the data to the that of the test distribution.  
- new arguments `legend.xy` and `legend.cex` let the user make some adjustment to the location and character size of the automatically constructed legend.
- two new functions `hideLocation()` and `revealLocation()` have been added for use with the `lineup = TRUE` case.  
    
    These can also be used more broadly to obfuscate integers in some range from 1 to n.  The result is a string which when evaluated will reveal the integer.
    The point is not encryption, but rather to prevent easy visual decoding.
    
- when `lineup = TRUE`, now `qqtest()` simply returns the string with the true location of the data obfuscated.  The function `revealLocation()` will return the numerical location of the true data. Unfortunately this slight increase in convenience also makes it slightly easier for a user to cheat and hence invalidate the lineup test.

    (In this case, `qqtest()` used to return the same in a list with named component `trueLoc`, so any code depending on the result being a list will need to be updated.)  
    
- when `lineup = FALSE`, `qqtest()` now *invisibly* returns a list of named components `x`, `y`, and `order` giving the horizontal and vertical locations of the points in sorted order, as well as the order vector from the input data. 

# qqtest 1.1.0 

Released on CRAN in April 2015, removed by R core March 2020 because of dependency on `robust` package orphaned and archived then.

Functionality based on

- R. Wayne Oldford  (2016), "Self calibrating quantile-quantile plots", *The American Statistician*, *70*, pp. 74-90.

    https://doi.org/10.1080/00031305.2015.1090338


Implemented matching of slope and intercept using a high breakdown regression estimator of `lmRob()` from the package `robust`.

Also introduces `R` functionality for the `K` distribution, as an alternative to the `chisq` distribution.  This is particularly attractive for teaching statistics; see the vignette.

