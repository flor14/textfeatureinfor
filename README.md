
<!-- README.md is generated from README.Rmd. Please edit that file -->

# textfeatureinfor

## **Description**

In Natural Language Processing, it is common for users to try and
engineer their own features from a given text. It can be difficult to
extract certain features from text without using additional R tools.
This R package includes functions that allows data scientists to extract
information from text features which can be useful for feature
engineering, or in other data science projects. Our package,
textfeatureinfor, will help gather summary information from plain text
such as the number of punctuations in the text, the average word lengths
and the percentage of fully capitalised words which can be useful
information for feature engineering. Additionally, our package can also
manipulate text data by removing the stopwords for the ease of future
processing steps.

Our package and functions are inspired from a lab in the course, DSCI
573 (Feature and model selection), of UBC MDS program, and are tailored
based on our own experience and interest.

## **Function Details**

-   `count_punc`: This function will count and return the number of
    punctuations within a given text.
-   `avg_word_len`: This function will calculate and return the average
    length of words within a given text.
-   `perc_cap_words`: This function will calculate the percentage of
    fully capitalised words in the text.
-   `remove_stop_words`: This function will find and remove the stop
    words in a text and will return the list of clean words.

## **R Ecosystem**

<!-- badges: start -->
<!-- badges: end -->

The goal of textfeatureinfor is to …

## Installation

You can install the development version of textfeatureinfor from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/textfeatureinfor")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(textfeatureinfor)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
