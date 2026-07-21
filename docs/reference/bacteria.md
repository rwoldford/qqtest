# Bacteria from Delaware River water entering the Torresdale Filter of the Philadelphia water supply 1913.

The number of bacteria per cubic centimetre was measured daily for river
water entering the Torresdale filter of the Philadelphia water supply
through the whole of 1913.

## Usage

``` r
bacteria
```

## Format

A data frame with 22 rows and 2 variates:

- count:

  Number of bacteria per cc.

- percentTime:

  Percent of days (out of 365) having bacteria count less than or equal
  to the measured count.

## Source

"The Element of Chance in Sanitation", George C. Whipple, Journal of the
Franklin Institue, Volume 182, July and August (1916), pp. 37-59 and
205-227. Data taken directly from Figure 22, page 209.

## Details

Rather than the individual daily results, recorded here are 22 values
together with the percentage of days whose value was less than or equal
to the recorded value. These quantiles are therefore based on 365 daily
measurements.

Values were taken from a logarithmic-normal probability plot dated
January 21, 1915 as it appeared in Figure 22 of George C. Whipple's 1916
(Part 2) paper on the “Element of Chance in Sanitation”. This paper
introduces logarithimic-normal probability paper (or a log-normal
qqplot).

`with(bacteria, plot(qnorm(percentTime/100), log(count,10), type="o"))`
reproduces Whipple's 1915 plot.

`with(bacteria, qqtest(data=count, p=percentTime/100, np=365, dist="log-normal", type="o"))`
will effect a qqtest plot for this data. More detail can be had from:
`with(bacteria, qqtest(data=log(count, 10), p=percentTime/100, np=365, dist="normal", type="o"))`
