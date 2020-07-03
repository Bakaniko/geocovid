## code to prepare `DATASET` dataset goes here
tweets_url <- "https://sharedocs.huma-num.fr/wl/?id=vMQPwEMY5owHLmuSxlXLDJ0Q7sqOWUUz"

library(dplyr)
library(readr)

# Extract raw tweets
raw_tweets <- readr::read_csv(file = tweets_url,
                              col_types = cols(id = "c", conversation_id = "c", created_at = "c"))

usethis::use_data(raw_tweets, overwrite = TRUE)

# Extract tweets links

condensed_tweets <- raw_tweets %>%
  select(id, link, hashtags, urls) %>% # remove empty or unused cols
  write_csv("data-raw/condensed_tweets.csv")

usethis::use_data(condensed_tweets, overwrite = TRUE)
