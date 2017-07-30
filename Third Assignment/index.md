---
title       : Share Price Development of the BMW AG
subtitle    : Third Assignment of the Developing Data Products Course (30th of July, 2017) 
author      : Ramón Roales-Welsch
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---



## What does my application do?

1. Edit YAML front matter
2. Write using R Markdown
3. Use an empty line followed by three dashes to separate slides!

--- .class #id 

## Show the BMW dataset

```r
library(readr)
bmw <- read_csv(url("https://raw.githubusercontent.com/Hauer-Glocke/third_assignment_data_products/master/my_first_app/BMW.DE.csv"))
```

--- .class #id 

## Adjustments of the dataset


```r
bmw <- bmw[c(1,5)]
bmw$Close <- as.numeric(bmw$Close)
```

```
## Warning: NAs durch Umwandlung erzeugt
```

```r
bmw <- bmw[!is.na(bmw$Close),]
```
          
          

--- .class #id 
## Plot Function


```r
#minDate <- input$Date[1]
#maxDate <- input$Date[2]
#period <- bmw$Date[minDate:maxDate]
#temp <- bmw[bmw$Date %in% period,]
#plot(x = temp$Date, 
#     y = temp$Close,
#     type = "l",
#     xlab = "Date",
#     ylab = "Price BMW Share",
#     main = "BMW Share Price Development")
```
