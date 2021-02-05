NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

library(ggplot2)
library(dplyr)

#filter to rows that are to do with vehicles
VSCC <- SCC %>% filter(grepl("vehicle", .$SCC.Level.Two, ignore.case=TRUE))
#filter NEI to rows regarding baltimore city
BC <- filter(NEI, fips == "24510")
#filter BC to rows that are regarding Vehicles
VBC <- BC %>%  filter(SCC %in% VSCC$SCC )

png("Plot5.png",width=500,height=500,units="px",bg="transparent")

ggplot(VBC,aes(factor(year),Emissions)) +
  geom_bar(stat="identity",fill="red",width=0.5) + 
  labs(x="year", y=expression("Total PM"[2.5]*" Emission")) + 
  labs(title=expression("PM"[2.5]*" Change in emmisions from motor vehicle sources in Baltimore City"))

dev.off()