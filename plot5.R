#Question # 5
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
png("plot5.png", width = 480, height barplot(Emissions, xlab = "Year", ylab = "Total Emissions PM2.5 Tons", 
                                             main = "Total Vehicle Emissions by Year", col = c("RED","BLUE","GREEN","YELLOW"))
    dev.off()= 480)
vehicle  <- grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
SCC_Vehicle <- SCC[vehicle, ]
NEI_SCC_Merge <- merge(NEI, SCC_Vehicle, by="SCC")
NEI_SCC_Baltimore <- subset(NEI_SCC_Merge, fips=='24510')
Emissions <- tapply(NEI_SCC_Baltimore$Emissions, NEI_SCC_Baltimore$year, sum)