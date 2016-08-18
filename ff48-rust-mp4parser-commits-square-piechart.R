library(ggplot2)
library(waffle)
library(plyr)

actualrustmp4commits = read.csv(
  file="mp4parse-commits-without-commit-reason.csv", 
    stringsAsFactors=F)

countname = count(actualrustmp4commits, "name")
countname <- countname[order(-countname$freq),]

waffle_vector <-setNames(countname$freq, countname$name)
waffle_vector

p = waffle(waffle_vector, rows=5, size=0.5) + theme_void() +
theme(legend.position="none") #+ scale_color_brewer(palette="Paired")

ggsave("400commits-ff48rustmp4parser-commit-square-piechart.png", p, width = 26.666666667, height = 26.666666667, dpi = 72, limitsize = FALSE) # 26.6666667 = 1920/72dpi
warnings()
