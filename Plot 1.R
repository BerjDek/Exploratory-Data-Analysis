NEI <- readRDS("summarySCC_PM25.rds")


EmissionTotal <- aggregate(Emissions ~ year,NEI, sum)

png("Plot1.png",width=500,height=500,units="px",bg="transparent")
barplot(EmissionTotal$Emissions,names.arg=EmissionTotal$year,xlab="Year",ylab="PM2.5 Emissions", main="Total PM2.5 Emission")
dev.off()