test_that("remove_stop_words() removes stop words", {
    expect_equal(remove_stop_words("We cannot solve our problems with the same thinking we used when we created them.")
               , c("solve", "thinking", "created"))
    expect_equal(remove_stop_words("!!!"), c("!!!"))
    expect_equal(remove_stop_words("UBC MDS is an amazing program!"), c("ubc", "mds", "amazing", "program!"))
})

test_that("remove_stop_words() errors if the type is not character", {
    expect_error(remove_stop_words(2))
    expect_error(remove_stop_words(list('hello', 'world')))
})

test_that("remove_stop_words() errors if the type is empty", {
    expect_error(remove_stop_words(""))
    expect_error(remove_stop_words(" "))
})
