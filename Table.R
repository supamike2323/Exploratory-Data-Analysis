library("data.table")
library("dplyr")

player <- read.csv("data.csv")

top_ten <- player %>%
  top_n(20, PTS)

top_ten <- top_ten[c(1:20), ]
top_ten <- arrange(top_ten, -PTS)
new_top_table <- data.table (
  Player = top_ten$Player,
  "2 Point shots" = top_ten$X2P,
  "3 Point shots" = top_ten$X3P,
  "Block" = top_ten$BLK,
  "Average Points" = top_ten$PTS
)

print(new_top_table)

