# Automobile primer paint thickness quality control measurements.

Contains process control measurements of thickness of primer applied to
automotive body parts in an auto factory. Twice daily, a set of 10
consecutive parts were selected and the thickness in mils (thousandths
of an inch) were measured. For each set of 10 parts, the average (xbar)
and the sample standard deviation (s) were also calculated and recorded.
These summaries would be plotted in xbar or s control charts with
suitably determined upper and lower control limits. Alternatively, for
checking outliers a qqplot (via qqtest) could be used for either xbar or
s.

## Usage

``` r
primer
```

## Format

A data frame with 20 rows and 14 variates:

- day:

  Day on which the parts were taken and measured.

- batch:

  Either the first or second set of 10 consecutive parts taken.

- sel1:

  Thickness of primer in mils on the first part sampled in the specified
  batch of that day.

- sel2:

  Thickness of primer in mils on the second part sampled in the
  specified batch of that day.

- sel3:

  Thickness of primer in mils on the third part sampled in the specified
  batch of that day.

- sel4:

  Thickness of primer in mils on the fourth part sampled in the
  specified batch of that day.

- sel5:

  Thickness of primer in mils on the fifth part sampled in the specified
  batch of that day.

- sel6:

  Thickness of primer in mils on the sixth part sampled in the specified
  batch of that day.

- sel7:

  Thickness of primer in mils on the seventh part sampled in the
  specified batch of that day.

- sel8:

  Thickness of primer in mils on the eighth part sampled in the
  specified batch of that day.

- sel9:

  Thickness of primer in mils on the ninth part sampled in the specified
  batch of that day.

- sel10:

  Thickness of primer in mils on the tenth part sampled in the specified
  batch of that day.

- xbar:

  Arithmetic average of the measurements of primer thickness of the 10
  parts selected in the specified batch of that day.

- s:

  Sample standard deviation of the measurements of primer thickness of
  the 10 parts selected in the specified batch of that day.

## Source

"Statistical Process Control - SPC", Automotive Industry Action
Group(AIAG), Southfield MI, (1995), page 64.

## Details

`with(primer,qqtest(xbar, main="Averages"))` will effect this plot for
xbar.
`with(primer,qqtest(s,dist="kay", df=9, main ="Standard deviations"))`
will effect this plot for s.
