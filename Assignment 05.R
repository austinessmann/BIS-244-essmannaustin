> `county_bachelorsdegree.(1)` <- read.csv("~/Desktop/county_bachelorsdegree (1).csv")
>   View(`county_bachelorsdegree.(1)`)
> p <- ggplot(data = `county_bachelorsdegree.(1)`,
              +             mapping = aes(x = long, y = lat, fill = pct_Education.Bachelor.s.Degree.or.Higher, 
                                          +                           group = group))
Error in ggplot(data = `county_bachelorsdegree.(1)`, mapping = aes(x = long,  : 
                                                                     could not find function "ggplot"
                                                                   > p1 <- p + geom_polygon(color = "gray90", size = 0.05) + coord_equal()
                                                                   Error: object 'p' not found
                                                                   > p2 <- p1 + scale_fill_brewer(palette="Greens")