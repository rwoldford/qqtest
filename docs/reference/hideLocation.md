# `hideLocation` Obfuscating the true location of the real data.

Hides the true location of the data as a non-obvious calculation string.

## Usage

``` r
hideLocation(trueLoc, nSubjects)
```

## Arguments

- trueLoc:

  A vector of one or more numbers in the set {1, 2, ..., `nSubjects`}
  whose locations are to be hidden.

- nSubjects:

  An integer larger than 1 used to define the set {1, 2, ...,
  `nSubjects`}.

## Value

Returns a character vector, each element being a string containing an
obscure calculation which, if parsed and evaluated, would return the
value of the corresponding number in `trueLoc`.

## See also

[`revealLocation`](https://rwoldford.github.io/qqtest/reference/revealLocation.md)

## Examples

``` r
trueLoc <- hideLocation(3,100)
trueLoc
#> [1] "2^(log(28971010301801.4, base=13) - 10.5)"
revealLocation(trueLoc)
#> [1] 3

n <- 200
trueLoc <- sample(1:n, 3)
trueLoc
#> [1] 111  47 159
ans <- hideLocation(trueLoc , n)
ans
#> [1] "2^(log(1415977114002008320, base=13) - 9.5)"  
#> [2] "2^(log(1.49136494935773e+21, base=7) - 19.5)" 
#> [3] "2^(log(1.52129961612909e+29, base=15) - 17.5)"
revealLocation(ans)
#> [1] 111  47 159
```
