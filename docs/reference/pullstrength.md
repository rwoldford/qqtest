# Strength of pull for 519 males aged 23-26.

From measurements made by Francis Galton at the International Health
Exhibition in 1884.

## Usage

``` r
pullstrength
```

## Format

A data frame with 7 rows and 4 variates:

- strength:

  Pull strength lower bound in pounds.

- nCases:

  Number of cases observed with pull strength between this bound and the
  next.

- percentCases:

  Percent of cases observed with pull strength between this bound and
  the next.

- percentCumulative:

  Cumulative percent of cases observed with pull strength up to this
  bound.

- percentAdjustedCumulative:

  Adjust Galton's cumulative percent to include only half the cases
  between this bound and the next.

## Source

"Natural Inheritance", Francis Galton, (1889), Table 1, page 199.

## Details

`qqtest(pullstrength$strength, p=pullstrength$percentCumulative/100, np=519, dist="uniform", main="Galton's ogive of pull strength for 519 males aged 23-26", xlab="Cumulative Proportions (Adjusted)",yAxisAsProbs=FALSE, ylab="Strength in lbs.", type="o")`
will effect Galton's Ogive.

`qqtest(pullstrength$strength, p=pullstrength$percentAdjustedCumulative/100, np=519, dist="normal", main="Gaussian qqplot of pull strength for 519 males aged 23-26", xlab="Cumulative Proportions (Adjusted)",yAxisAsProbs=FALSE, ylab="Strength in lbs.", type="o")`
will effect a normal qqplot for this data.
