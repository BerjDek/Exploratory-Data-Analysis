NEI <- readRDS("summarySCC_PM25.rds")


library(ggplot2)
library(dplyr)

BC <- filter(NEI, fips == "24510")


png("plot3.png",width=500,height=500,units="px",bg="transparent")

ggplot(BC, aes(year,Emissions,fill=type)) + 
  geom_bar(stat="identity") + 
  facet_grid(.~type,scales = "free",space="free") +  
  theme(axis.text.x = element_text(angle =60)) +
  labs(title=expression("PM"[2.5]*" Emissions, Baltimore City 1999-2008"))

dev.off()
