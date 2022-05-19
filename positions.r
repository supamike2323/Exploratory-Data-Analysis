library("dplyr")
library("tidyverse")
library("ggplot2")


nbastats_df <- read.csv("C:/Users/15184/Desktop/rs/Exploratory-Data-Analysis-main/data.csv")

#filter out the data of point per game and positions
scores_df <- nbastats_df %>%
  select(PTS, Pos)

#create the boxplots of points per game in each positions
#C=center, F=forward, F-C=forward&center, G=guard, PF= power forward, PG=point guard, SF= small forward
#SF-PF=small foward&power forward, SG= shooting guard
ggplot(data = scores_df, aes(x=Pos,y=PTS, fill=Pos)) + 
  geom_boxplot()+
  scale_fill_brewer(palette="Dark2") + 
  geom_jitter(shape=16, position=position_jitter(0.2))+
  labs(title = 'Point per game for all players in different positions',
       y='Points per game',x='Positions')

