NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

library(ggplot2)
library(dplyr)

BSCC <-  SCC %>% filter( grepl('comb', .$SCC.Level.One, ignore.case=TRUE) & grepl('coal', .$SCC.Level.Four, ignore.case=TRUE))
BNEI <-  NEI %>% filter(SCC %in% BSCC$SCC)


png("Plot4.png",width=500,height=500,units="px",bg="transparent")

ggplot(BNEI,aes(factor(year),Emissions/10^5)) +
  geom_bar(stat="identity",fill="blue",width=0.5) + 
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (10^5 Tons)")) + 
  labs(title=expression("PM"[2.5]*" Coal Combustion Emissions in the US from 1999-2008"))

dev.off()