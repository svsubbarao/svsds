---
title       : Developing Data Products
subtitle    : Course Project
author      : svsubbarao
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      #
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## Description

The Shiny App I wrote displays energy consumption information:

- gas
- electricity
- water

for the years 2012 to 2015.

The app developed for the first part of the assignment is avalilable at:

https://svsubbarao.shinyapps.io/dddproject

Source code for ui.R and server.R files are available on the GitHub:

https://github.com/svsubbarao/svsds/tree/master/Dev_Data_Products_Project

---
## Details

Every Sunday, I write down in an Excel sheet the figures displayed by the
different meters.

These data are diffed, week by week, so that I get the week's consumption.

Further more, a formula is applied to compute an estimate price (expressed in
EUR) for the week's consumption.

---
## Example

Here are the first 10 lines of the Excel file (for the columns which interest
me, the ones I show in the barplot):


```
##          Date PriceGas PriceElec PriceWater
## 1  2012-01-01    55.51     22.14       2.96
## 2  2012-01-08    57.22     23.67       3.30
## 3  2012-01-15    62.07     23.29       3.26
## 4  2012-01-22    56.59     23.67       3.02
## 5  2012-01-29    63.63     23.86       3.12
## 6  2012-02-05    83.32     24.43       4.61
## 7  2012-02-12    83.80     25.39       5.03
## 8  2012-02-19    59.13     23.29       5.62
## 9  2012-02-26    54.13     21.00       5.40
## 10 2012-03-04    40.49     21.38       3.66
```

---
## Lessons learned

- Necessary to use reactive function as soon as I have 2 inputs or more.

- In the renderPlot function, the name of the dataframe must be followed by
  parentheses.

---
## Conclusion

- Writing the application + these slides took me around 3 hours.
  That's pretty excellent for making such a huge work available (displayable,
  testable) by third parties.  A wonder, in fact.

- With these R technologies, I really feel I stand on the shoulders of giants.
