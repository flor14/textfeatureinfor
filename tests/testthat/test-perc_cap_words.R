library(stringr)
library(rapportools)

test_that("perc_cap_words() counts percentage of fully capitalised words in string", {
    expect_equal(perc_cap_words("THIS IS SPAM!"), 100)
    expect_equal(perc_cap_words("1234 !!! oked"), 0)
    expect_equal(perc_cap_words("I have downloaded this package Before! YAHOO!"), 14.2857142857143)
})

test_that("perc_cap_words() throws an error if the type is not a string", {
    expect_error(perc_cap_words(123))
    expect_error(perc_cap_words(Greetings))
})

test_that("perc_cap_words() throws an error is the string is empty", {
    expect_error(perc_cap_words(""))
    expect_error(perc_cap_words(" "))
})