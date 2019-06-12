library(ggplot2)
library(ggpubr)
#reading data
PSM <- read.delim("~/Desktop/PSM.txt")
# make figure
ggbarplot(PSM, x="name", y="psm", fill="class", color="white", palette = "jco", sort.val="desc", sort.by.groups= TRUE, x.text.angle=90, ylim=c(0,25))+
  labs(y="Number of Peptide Spectrum Matches", x="")+
  theme(axis.line = element_line(colour = "black", size=0.8))+
  theme(axis.text = element_text(colour="black",size=12, face = "bold"))+
  theme(axis.title = element_text(colour="black", size = 14, face ="bold"))+
  theme(legend.position = "")+theme(axis.text.x = element_text(vjust=0.5))
