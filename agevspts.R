library("dplyr")
library("tidyverse")
library("ggplot2")

stats_df <- read.csv("/Users/obliviate/Desktop/Exploratory-Data-Analysis-main/data.csv")

age_points_df <- stats_df %>%
  select(Age, PTS)

my_graph <- ggplot(age_points_df, aes(x=Age, y=PTS)) + 
  geom_point()

my_graph +
  scale_x_continuous(breaks = seq(19, 37, by = 1)) +
  scale_y_continuous(breaks = seq(0, 35, by = 5)) +
  labs(
    x = "Age",
    y = "Points per game",
    title = "Relationship between age and points per game",
  )
  
