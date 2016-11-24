library(ggplot2)
data22nov2016 = read.csv(file="rust-ff48-negative-deletions-insertions.csv", 
    stringsAsFactors=F)

p = ggplot(data=data22nov2016, aes(x=commit, y=number_of_lines, fill = type))+ #must not be fill=I(type) unless type is hex colours
    geom_bar(position="identity", stat="identity", width = 1)+
    theme_void()+ 
    theme(legend.position = 'none')+ 
    theme(strip.background = element_blank(),strip.text.x = element_blank())#\+ #turn off facet labels
    scale_fill_manual(values=c("red", "green")) #hardcode colours to red and green

ggsave("rust-mp4-ff48-sorted-commits-insertion-negative-deletion.png", 
       p, width = 29.1666666667, 
       height = 25, dpi = 72, limitsize = FALSE, bg = "transparent") #2100x1800 for zazzle
