test_that("count_punc() finds the number of punctuations in a string", {
    expect_equal(count_punc("Hello, World!"), 2)
    expect_equal(count_punc(",!\"#$%&’()*+-./:;<=>?@[]^_`{|}~"), 31)
    expect_equal(count_punc(""), 0)
    expect_equal(count_punc(" "), 0)
})

test_that("avg_word_len() throws an error when the type is not a string", {
    expect_error(count_punc(123))
    expect_error(count_punc(list("some", "text")))
})

test_that("avg_word_len() throws an error if there is more than 1 element
          in the character vector", {
    expect_error(count_punc(c("many...","many...", "words!")))
})
