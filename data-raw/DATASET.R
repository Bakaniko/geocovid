## code to prepare `DATASET` dataset goes here
tweets_url <- "https://sharedocs.huma-num.fr/wl/?id=vMQPwEMY5owHLmuSxlXLDJ0Q7sqOWUUz"

library(dplyr)
library(readr)

raw_tweets <- readr::read_csv(file = tweets_url,
                              col_types = cols(id = "c", conversation_id = "c", created_at = "c"))


usethis::use_data(raw_tweets, overwrite = TRUE)


