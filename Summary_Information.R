suppressMessages(library(dplyr))
suppressMessages(library(tidyverse))
suppressMessages(library(data.table))
# A function that takes in a dataset and returns a list of info about it:
data_df <- read.csv("data.csv")
summary_info <- list()
summary_info$num_observations <- nrow(data_df)

summary_info$num_types <- ncol(data_df)

summary_info$max_age <- max(data_df$Age)

summary_info$max_age_player <- data_df %>%
  filter(Age == max(data_df$Age, na.rm = T)) %>%
  select(Player)

summary_info$max_age_player = summary_info$max_age_player[1,1]

summary_info$max_point <- data_df %>%
  filter(PTS == max(data_df$PTS, na.rm = T)) %>%
  select(Player)

summary_info$max_point_player = summary_info$max_point[1,1]

summary_info$max_point <- max(data_df$PTS)

summary_info$max_three_pt_field_goal <- data_df %>%
  filter(X3P == max(data_df$X3P, na.rm = T)) %>%
  select(Player)

summary_info$max_three_pt_field_goal_points <- max(data_df$X3P)

summary_info$max_three_pt_field_goal = summary_info$max_three_pt_field_goal[1,1]
