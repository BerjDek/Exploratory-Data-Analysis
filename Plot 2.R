NEI <- readRDS("summarySCC_PM25.rds")



install.packages("tidyverse")
library(dplyr)
BC <- filter(NEI, fips == "24510")
BC_Agg <- aggregate(Emissions ~ year,BC, sum )

png("plot2.png",width=500,height=500,units="px",bg="transparent")
barplot(BC_Agg$Emissions,names.arg=BC_Agg$year,xlab="Year",ylab="PM2.5 Emissions", main=" PM2.5 Emission in Baltimore City")
dev.off()