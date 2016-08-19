library(ggplot2)
data3 = read.csv(file="sorted-rust-mp4-dayofyear-unixtime-person.csv", 
    stringsAsFactors=F)
p = ggplot(data=data3, aes(x=dayofyear))
p= p + geom_bar(stat="count", colour="green") + theme_void()

ggsave("rust-mp4-ff48-sorted-commits-by-dayofyear.png", 
p, width = 26.666666667, 
height = 26.666666667, dpi = 72, limitsize = FALSE)
