library("data.table")
library("dplyr")

player <- read.csv("data.csv")
top_ten <- player %>%
  top_n(10, PTS)
new_top_table <- data.table (
  Player = top_ten$Player,
  "X2P" = top_ten$X2P,
  "X3P" = top_ten$X3P,
  "BLK" = top_ten$BLK,
  "PTS" = top_ten$PTS
)
