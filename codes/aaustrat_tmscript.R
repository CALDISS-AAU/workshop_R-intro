library(stringr)
library(tm)
library(wordcloud)
library(pdftools)

data_path <- '//ADM.AAU.DK/Users/kgk/Documents/CALDISS/Aktiviteter/Workshopmateriale/R intro/data/'

setwd(data_path)
aau_strat <- pdf_text("aau_strategy_2016_2021.pdf")

wordveclist_convert <- function(text) { 
  text.v <- paste(text, collapse=" ")
  text.v <- gsub("\n", "", text.v)
  text.v <- gsub("\r", " ", text.v)
  text.v <- gsub("-", "", text.v)
  text.lower.v <- str_to_lower(text.v)                  
  text.words.v <- str_split(text.lower.v, "\\W")  
  text.words.v <- unlist(text.words.v) 
  text.words.v <- gsub(".*[0-9]+", "", text.words.v)
  text.words.v <- gsub("_", "", text.words.v)     
  text.words.v <- text.words.v[which(text.words.v != "")]
  return(text.words.v)
}

aau_strat_wordvec <- wordveclist_convert(aau_strat)
aau_strat_wordvec <- aau_strat_wordvec[!stopwords('en') %in% aau_strat_wordvec]

wordcloud(aau_strat_wordvec, colors = brewer.pal(8, 'Dark2'))