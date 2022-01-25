test_that("avg_word_len() finds the average length of the words in a string", {
    expect_equal(avg_word_len("Hello, World!"), 5)
    expect_equal(avg_word_len("here.are.some.words"), 4)
    expect_equal(avg_word_len("!!"), 0)
    expect_equal(avg_word_len(""), 0)
    expect_equal(avg_word_len("!!words!!"), 5)
}

test_that("avg_word_len() throws an error when the type is not a string", {
  expect_error(avg_word_len(4))
  expect_error(avg_word_len(list("words", "in", "a", "list")))
}

