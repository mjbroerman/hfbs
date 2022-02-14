## code to prepare `hfbs` dataset goes here

hfbs <- read.delim("data-raw/hfbs.txt", col.names = "lyric")

usethis::use_data(hfbs, overwrite = TRUE)
