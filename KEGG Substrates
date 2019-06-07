library(ggplot2)
#processing data
kegg <- read.delim("KEGG_2019_Mouse_table.txt")
kegg20 <- kegg[1:20,]
#relevel Term by Combined.Score
kegg20$Term <- factor(kegg20$Term, levels = kegg20$Term[order(kegg20$Combined.Score)])
#make the barplot
g <- ggplot(kegg20, aes(x=Term, y=Combined.Score, fill=Adjusted.P.value))
g+geom_bar(stat = "identity")+coord_flip()+theme_classic()+
  scale_fill_distiller(palette = "Blues")+
  labs(y="Combined Score", x="")+
  theme(legend.text=element_text(size=rel(1.0), face = "bold"))+
  theme(legend.title=element_text(size=12, color="black", face = "bold"))+
  theme(axis.line = element_line(colour = "black", size=0.8))+
  theme(axis.text = element_text(colour="black",size=12, face = "bold"))+
  theme(axis.title = element_text(colour="black", size = 14, face ="bold"))+
  theme(legend.position = c(0.9,0.2))
