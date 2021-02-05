NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

library(ggplot2)
library(dplyr)

#filter to rows that are to do with vehicles
VSCC <- SCC %>% filter(grepl("vehicle", .$SCC.Level.Two, ignore.case=TRUE))
#filter NEI to rows regarding baltimore city  
BC <- filter(NEI, fips == "24510")
#filter NEI to rows regarding LA 
LA <- filter(NEI, fips == "06037")
# Combine both DFs
BCLA <- rbind(BC,LA)

#filter BC to rows that are regarding Vehicles
VBLAC <- BLAC %>%  filter(SCC %in% VSCC$SCC )

#rename Column
VBLAC <- VBLAC %>% 
  rename(city = fips)

#rename values
VBLAC$city[VBLAC$city == "24510"] <- "Baltimore City"
VBLAC$city[VBLAC$city == "06037"] <- "LA City"


png("Plot6.png",width=500,height=500,units="px",bg="transparent")

ggplot(VBLAC, aes(x=factor(year), y=Emissions)) +
  geom_bar(aes(fill=year),stat="identity") +
  facet_grid(scales="free", space="free", .~city) +
  guides(fill=FALSE) + theme_bw() +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission")) + 
  labs(title=expression("PM"[2.5]*" Motor Vehicle Source Emissions in Baltimore & LA, 1999-2008"))

dev.off()