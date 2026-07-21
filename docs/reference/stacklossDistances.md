# Mahalanobis squared distances of Brownlee's stack loss plant operation data based only on the explanatory variates (air flow, water temperature, and acid concentration).

Mahalanobis distances were calculated using the mahalanobis R function.
Under standard normal theory, these are approximately Chi-squared on 3
degrees of freedom.

## Usage

``` r
stacklossDistances
```

## Format

A data frame with 21 rows and 2 variates:

- ordinary:

  Mahalanobis squared distances from the arithemetic mean using the
  eliptical contours of the sample covariance matrix.

- robust:

  As with distances, these are Mahalobis squared distances butnow based
  on robust measures of location and covariance matrix (as determined
  from the default covRob of the robust package).

## Source

"Statistical Theory and Methodology in Science and Engineering", K.A.
Brownlee, (1960, 2nd ed. 1965), Wiley, New York pp. 491-500.

## Details

`with(stacklossDistances, qqtest(robust,dist="chi", df=3))` will show
"outliers".

`with(stacklossDistances, qqtest(ordinary,dist="chi", df=3))` will show
"inliers".
