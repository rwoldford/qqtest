# Storage, in millions of gallons daily per square mile of net land area, at the Wachusett Reservoir in Massacusetts - storage computed for each of several rates of draft (draft being a determined maintainable flow in 1,000s of gallons per square mile daily).

First extensive published use of normal qqplots. Hazen uses a=1/2 to
make the p values for the plots. Hazen doesn'tplot zeros but has them
contribute to the sample size. The context of use is in a study of the
relation between the water storage provided in a reservoir on any stream
and the quantity of water that can be continuously supplied by it. To
quote the paper: ... treat all the remaining variations on the basis of
probabilities, using all data from a number of streams; and to study
them in comparison with the normal law of error."

## Usage

``` r
WachusettReservoir
```

## Format

A data frame with 15 rows and 6 variates:

- draft100:

  Computed storage, in millions of gallons per square mile of land area,
  given a draft of 100,000 gallons per square mile daily.

- draft200:

  Computed storage, in millions of gallons per square mile of land area,
  given a draft of 200,000 gallons per square mile daily.

- draft400:

  Computed storage, in millions of gallons per square mile of land area,
  given a draft of 400,000 gallons per square mile daily.

- draft600:

  Computed storage, in millions of gallons per square mile of land area,
  given a draft of 600,000 gallons per square mile daily.

- draft800:

  Computed storage, in millions of gallons per square mile of land area,
  given a draft of 800,000 gallons per square mile daily.

- draft1000:

  Computed storage, in millions of gallons per square mile of land area,
  given a draft of 1,000,000 gallons per square mile daily.

## Source

"Storage to be provided in impounding reservoirs for municipal water
supply (with discussion)", Allen Hazen, Transactions of the American
Society of Civil Engineers, Vol. 77, (1914), pp. 1539-1669.

## Details

`qqtest(WachusettReservoir$draft800,dist="uniform", a=1/2,type="o")`
will effect Hazen's original plot for a draft of 800,000 gallons per
square mile daily.

`qqtest(WachusettReservoir$draft800,dist="normal", a=1/2, type="o")`
will effect Hazen's normal qq plot for a draft of 800,000 gallons per
square mile daily.
