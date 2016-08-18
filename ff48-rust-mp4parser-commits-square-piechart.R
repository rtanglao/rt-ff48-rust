library(ggplot2)
library(waffle)

actualrustmp4commits = read.csv(
  file="actualrustmp4commits.csv", 
    stringsAsFactors=F)

colour_vector <-setNames(actualrustmp4commits$numcommits,
actualrustmp4commits$person)
colour_vector

p = waffle(colour_vector, rows=5, size=0.5) + theme_void() +
theme(legend.position="none")

ggsave("ff48rustmp4parser-commit-square-piechart.png", p, width = 26.666666667, height = 26.666666667, dpi = 72, limitsize = FALSE) # 26.6666667 = 1920/72dpi
warnings()