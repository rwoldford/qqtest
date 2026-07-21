# Sitting height in inches of female adults (aged 23-50).

From measurements made by Francis Galton at London's International
Health Exhibition in 1884, published in 1885.

## Usage

``` r
sittingHeights
```

## Format

A data frame with 9 rows and 8 variates, the first 5 of which are as
recorded by Galton:

- lowerBound:

  Sitting height greater than or equal to this lower bound in inches.

- upperBound:

  Sitting height strictly less than this upper bound in inches.

- nCases:

  Number of cases observed with sitting height between the two bounds.

- nCasesCumulative:

  Number of cases observed with sitting height up to but not including
  the upper bound.

- percentCumulative:

  Cumulative number of cases expressed as a percent.

- binCentre:

  Average of the lower and upper bounds.

- nCasesCentred:

  Number of cases assigned to the binCentre; half of cases observed with
  sitting height between the two bounds is assigned to be below the
  binCentre, half above (avoids producing 100 percent for last entry).

- proportionCumulativeAdjusted:

  Cumulative proportions using nCasesCentred.

## Source

"The Application of a Graphic Method to Fallible Measures", Francis
Galton, (1885), Journal of the Statistical Society of London, Jubilee
Volume (June 22-24, 1885), pp. 262-265.

## Details

`with(sittingHeights, plot(percentCumulative,upperBound, type="o", lwd=2, xlim=c(0,100), ylim=c(20,40),xlab="Percentage of women", ylab="Sitting heights in inches"))`
will effect Galton's Ogive.

`with(sittingHeights, qqtest(binCentre, dist="normal", p = proportionCumulativeAdjusted, np=775, main="Sitting heights of women in inches"))`
will effect a normal qqplot for this data.
