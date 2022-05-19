library("dplyr")
library("tidyverse")
library("ggplot2")

nbastats_df <- read.csv("C:/Users/15184/Desktop/rs/Exploratory-Data-Analysis-main/data.csv")

#filter out the Warriors from all players
warriors_df <- nbastats_df %>%
  select(Player, Tm, PTS) %>%
  filter(Tm == "GSW")

#Ranking the point per game for all warrior players
ggplot(data=warriors_df,aes(x=reorder(Player,PTS),y=PTS)) + 
  geom_bar(stat ='identity',aes(fill=PTS))+
  coord_flip() + 
  theme_grey() + 
  scale_fill_gradient(name="Points Per Game for Warriors")+
  labs(title = 'Ranking of Points per games for Warriors',
       y='Points Per Game',x='Players')+ 
  geom_hline(yintercept = mean(warriors_df$PTS),size = 1, color = 'orange')

