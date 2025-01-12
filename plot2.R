FileName <- "/Users/siddhantjagdev/Desktop/coursera/household_power_consumption.txt"
data_access <- read.table(FileName, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data_access[data_access$Date %in% c("1/2/2007","2/2/2007") ,]
DateTime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(DateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
