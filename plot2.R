power_file <- "C:\\Users\\Mostafa\\Documents\\household_power_consumption.txt"
table <- read.table(power_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
days <- table[table$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(days$Date, days$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(days$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()