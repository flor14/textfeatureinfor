library(stringr)
# count_punc
#' Count punctuations
#'
#' @param string A character vector with, at most, one element.
#' @inheritParams katherinemansfieldr::extract_punct
#'
#' @return A vector containing the number of punctuations.
#' @export
#'
#' @examples
#' x <- "Hello, World!"
#' count_punc(x)
#' 2
count_punc <- function(text) {
}








# avg_word_len
#' Calculate average word length in a string
#'
#' @param text A character vector for average word length extraction
#'
#' @return A numeric vector representing the average word length in the text
#' @export
#'
#' @examples
#' x <- "Here are some words"
#' avg_word_len(x)
#' 4
avg_word_len <- function(text) {

}








# perc_cap_words
#' Percentage of fully capitalised words in a string
#'
#' @param text A character vector with length one containing the piece of text to analyze.
#'
#' @return A vector containing the number of fully capitalised words
#'
#' @examples
#' text <- "This is REALLY Awesome!"
#' perc_cap_words(text)
#' 25
perc_cap_words <- function(text) {
    if(!is.character(text)){
        stop("'text' should be of type 'String'")
    }
    if(rapportools::is.empty(text)){
        stop("Please provide a non-empty text!")
    }
    no_cap_words <- str_count(text, "\\b[A-Z]{2,}\\b")
    words_in_string <- lengths(strsplit(text, "\\W+"))
    
    return (no_cap_words/words_in_string * 100)
}








#' Remove stop words
#'
#' @param text A character vector with length one containing the piece of text to analyze.
#'
#' @return A character vector containing words in the text that are not stop words.
#'
#' @examples
#' text <- "Tomorrow is a big day!"
#' remove_stop_words(text)
#' "tomorrow" "day!"
remove_stop_words <- function(text) {
    if(!is.character(text)){
        stop("Cannot remove stop words from a non-character type!")
    }
    if(rapportools::is.empty(text)){
        stop("Cannot remove stop words from an empty string!")
    }
    stop_words <- stopwords::stopwords("en", source = "stopwords-iso")
    text <- tolower(text)
    words <- strsplit(text, " ")[[1]]
    clean_words <- vector()
    for(word in words) {
        if(sum(stringr::str_detect(stop_words, word)) == 0) {
            clean_words <- append(clean_words, word)
        }
    }
    clean_words
}
