
<!-- README.md is generated from README.Rmd. Please edit that file -->

# textfeatureinfor

[Link to the package
website](https://ubc-mds.github.io/textfeatureinfor/)

<!-- badges: start -->

[![R-CMD-check](https://github.com/UBC-MDS/textfeatureinfor/workflows/R-CMD-check/badge.svg)](https://github.com/UBC-MDS/textfeatureinfor/actions)
<!-- badges: end -->

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

In the field of text feature engineering, we are cognisant that there
are well established packages in the R ecosystem - specifically
[`textfeatures`](https://github.com/mkearney/textfeatures),
[`qdap`](http://trinker.github.io/qdap/) and
[`stopwords`](https://github.com/quanteda/stopwords). For punctuations,
we are aware that textfeatures package can be used to find the number of
punctuations in a string. To calculate average word length, both
textfeatures and qdap are able to find the count of words but they do
not provide the average length. To count the number of fully capitalised
words in a text, textfeatures provides a means to find the number of
capitalized characters, but not to count them explicitly. In the case of
stopwords, the package stopwords provides the list of stopwords in
different languages. However, it does not have a function to remove
stopwords from the text.

Based on our experience in our previous module, all the functions that
we seek to use require several lines of code. For example, to calculate
the average word length, we need to extract the punctuation, count total
number of characters, then averaging out over the number of words
present. As such, we seek to simplify these tasks into functions that
users, including ourselves, can employ in one line of code.

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
count_punc("Hello, World!")
#> [1] 2
avg_word_len("Here are some words")
#> [1] 4
perc_cap_words("This is REALLY Awesome!")
#> [1] 25
remove_stop_words("Tomorrow is a big day!")
#> [1] "tomorrow"
```
