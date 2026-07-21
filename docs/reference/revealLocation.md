# `revealLocation` Revealing locations encoded as a string calculation.

Reveals the location by parsing and evaluating the string.

## Usage

``` r
revealLocation(hiddenLocation)
```

## Arguments

- hiddenLocation:

  A character vector of calculation strings.

## Value

Returns the value of the each calculation.

## See also

[`hideLocation`](https://rwoldford.github.io/qqtest/reference/hideLocation.md)

## Examples

``` r
trueLoc <- hideLocation(3,100)
trueLoc
#> [1] "2^(log(109341826986338, base=5) - 18.5)"
revealLocation(trueLoc)
#> [1] 3

n <- 200
trueLoc <- sample(1:n, 3)
trueLoc
#> [1] 168  12  52
ans <- hideLocation(trueLoc , n)
ans
#> [1] "2^(log(9.54996928504107e+33, base=15) - 21.5)"
#> [2] "2^(log(551178844846783808, base=15) - 11.5)"  
#> [3] "2^(log(5.72216770039634e+23, base=15) - 14.5)"
revealLocation(ans)
#> [1] 168  12  52
```
