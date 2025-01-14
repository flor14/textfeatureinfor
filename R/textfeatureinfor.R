# count_punc
#' Count punctuations
#'
#' @param text A character vector with, at most, one element.
#' @inheritParams stringi::stri_detect_fixed
#'
#' @return A vector containing the number of punctuations.
#' @export
#'
#' @examples
#' x <- "Hello, World!"
#' count_punc(x)
#' 2
count_punc <- function(text) {
    if (!is.character(text)) {
        stop("Text should be of type 'String'")
    }
    if (length(text) > 1) {
        stop("Text should be a character vector of length 1")
    }

    punctuations <- c(',','!','"','#','$','%','&',"'",'(',')','*','+','-','.',
                      '/',':',';','<','=','>','?','@','[',']','^','_','`',
                      '{','|','}','~')
    count_of_punc <- 0
    for (char in strsplit(text, "")[[1]]) {
        if (any(stringi::stri_detect_fixed(char, punctuations) == TRUE))
            count_of_punc = count_of_punc + 1
    }
    return (count_of_punc)
}



# avg_word_len
#' Calculate average word length in a string
#'
#' @param text A character vector for the average word length extraction.
#' @return A numeric vector representing the average word length in the text.
#' @export
#'
#' @examples
#' x <- "Here are some words"
#' avg_word_len(x)
#' 4
avg_word_len <- function(text) {

  if (!is.character(text)) {
    stop("Text should be of type 'String'")
  }

  # prevents users from inputting character vectors with more than one element
  if (length(text) > 1) {
    stop("Text should be a character vector of length 1")
  }

  # Get all punctuation from text
  punc <- c(',','!','"','#','$','%','&',"'",'(',')','*','+','-','.',
            '/',':',';','<','=','>','?','@','[',']','^','_','`',
            '{','|','}','~')

  # removes all punctuation from string
  for (char in punc) {
    text <- stringr::str_replace_all(text, stringr::fixed(char), " ")
  }

  # to ensure that the text is not an empty string or a string with only spaces
  if (nchar(text) == 0 | grepl("^\\s*$", text)) {
    return(0)
  }

  else {
    # separates words by spaces and places words into a list
    word_list <- as.list(unlist(strsplit(text, "\\s{1,}")))

    # calculates the average length of the words in the string
    letter_count <- 0
    for (word in word_list) {
      letter_count <- letter_count + nchar(word)
    }

    # removes empty strings from the word_list before computation
    word_list <- word_list[word_list != ""]

    average_length <- letter_count / length(word_list)

    return (average_length)
  }
}



# perc_cap_words
#' Percentage of fully capitalised words in a string
#'
#' @param text A character vector with length one containing the piece of text to analyze.
#'
#' @return A vector containing the number of fully capitalised words
#' @export
#'
#' @examples
#' text <- "This is REALLY Awesome!"
#' perc_cap_words(text)
#' 25
perc_cap_words <- function(text) {
    if(length(text) > 1){
        stop("Text should be a character vector of length 1")
    }
    if(!is.character(text)){
        stop("'text' should be of type 'String'")
    }
    if(rapportools::is.empty(text)){
        stop("Please provide a non-empty text!")
    }
    no_cap_words <- stringr::str_count(text, "\\b[A-Z]{2,}\\b")
    words_in_string <- lengths(strsplit(text, "\\W+"))

    return (no_cap_words/words_in_string * 100)
}



# remove_stop_words
#' Remove stop words
#'
#' @param text A character vector with length one containing the piece of text to analyze.
#'
#' @return A character vector containing words in the text that are not stop words.
#' @export
#'
#' @examples
#' text <- "Tomorrow is a big day!"
#' remove_stop_words(text)
#' "tomorrow"
remove_stop_words <- function(text) {
    if(length(text) > 1){
        stop("Text should be a character vector of length 1")
    }
    if(!is.character(text)){
        stop("'text' should be of type 'String'")
    }
    if(rapportools::is.empty(text)){
        stop("Please provide a non-empty text!")
    }
    # Get all the stopwords
    stop_words <- stopwords::stopwords("en", source = "stopwords-iso")

    # Make the text lowercase
    text <- tolower(text)

    # All punctuation
    punc <- c(',','!','"','#','$','%','&',"'",'(',')','*','+','-','.',
              '/',':',';','<','=','>','?','@','[',']','^','_','`',
              '{','|','}','~')

    # Remove all punctuation from the text
    for (char in punc) {
        text <- stringr::str_replace_all(text, stringr::fixed(char), " ")
    }

    # Split the text into words
    words <- strsplit(text, " ")[[1]]

    # Store the words that are not stopwords
    clean_words <- vector()
    for(word in words) {
        if(sum(stringr::str_detect(stop_words, word)) == 0) {
            clean_words <- append(clean_words, word)
        }
    }
    if(length(clean_words) == 0){
        return(character(0))
    }
    clean_words
}
