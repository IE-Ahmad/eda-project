#Question 1
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
png("plot1.png", width = 480, height = 480)
Emissions <- tapply(NEI$Emissions, NEI$year, sum)
barplot(Emissions, xlab = "Year", ylab = "Total Emissions PM2.5 Tons", col = c("RED","BLUE","GREEN","YELLOW"), main = "Total PM2.5 Emission From All Sources By Year")
dev.off()