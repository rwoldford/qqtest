# qqtest

## Self calibrating quantile-quantile plots

Quantile–quantile plots, or qqplots, are an important visual tool for many applications but their interpretation requires some care and often more experience. This apparent subjectivity is unnecessary. By drawing on the computational and display facilities now widely available, qqplots are easily enriched to help with their interpretation. 

A new enhanced qqplot, the self-calibrating qqplot, is introduced and demonstrated on a variety of examples (all examples from the original paper appear on the help/reference page for `qqtest`).

Possibilities are endless.  Some standard examples include normal qqplots, log-normal plots, half-normal plots (e.g. for factorial experiments), and the comparison of empirical distributions. Self-calibration is had by visually incorporating sampling variation in the qqplot display in a variety of ways. 

A self-calibrating plot can be created for any distribution whose quantile function can be provided by the user, making them useful for a wide variety of applications.

The plots are particularly helpful to students gaining experience in interpreting quantile-quantile plots, and to instructors hoping to teach basic understanding and interpretation of quantile-quantile plots.

Please read the reference for more explanation on and the historical development of the quantile-quantile plot.

### Historical data sets

The package also contains a collection of data sets which have appeared in the literature through the historical development of the quantile plot and the quantile quantile plots.

### The K distribution

The package also provides the usual functions for a distribution which we have used with considerable success in teaching undergraduate introductory statistics courses.  This distribution is a simply transformation of the chi-squared, namely if X has a chi-squared distribution on m degrees of freedom then Y = sqrt(X/m) has a *K distribution on m degrees of freedom*.

This is a much more natural distribution to work with in the practice and development of standard normal theory inference as described in nearly every first course in Statistics.  It is, for example, the distribution of the sample standard deviation.  It is also much more nearly symmetric and concentrates around y = 1 as its degrees of freedom increase.  It has much to recommend it.  See the article/vignette on the K distribution.  

The package provides the usual suite of functions: `dkay()`, `pkay()`, `qkay()`, and `rkay()`.
(These seem particularly apt name choices given the Scottish pronunciation of "Kay" is the same as "Chi".)

### Reference

- R. Wayne Oldford  (2016), "Self calibrating quantile-quantile plots", *The American Statistician*, *70*, pp. 74-90.

    https://doi.org/10.1080/00031305.2015.1090338