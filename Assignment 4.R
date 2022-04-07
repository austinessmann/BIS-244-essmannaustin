library(tidyverse)
library(ggrepel)
library (scales)
Movies<-read_csv("Top_10000_Popular_Movies.csv")
recent_movies <- Movies %>% filter(release_date>="2020-01-01"&release_date <="2022-01-01")
p<-ggplot(data=recent_movies, mapping=aes(x=release_date,y=popularity))
p+geom_point()+ geom_text_repel(data = subset(recent_movies, popularity > 1600),
                                mapping = aes(label = original_title))+scale_y_continuous(labels= scientific)+labs(x="Release Date", y="Popularity Score", title="Top 10,000 Most Popular Movies")