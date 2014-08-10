fulldata <- read.csv2("household_power_consumption.txt", na.strings = "?")
dates <- ((fulldata[, 1] == "1/2/2007") | (fulldata[, 1] == "2/2/2007"))
interdata <- fulldata[dates, ]
datetime <- strptime(paste(interdata[, 1], interdata[, 2]), "%d/%m/%Y %H:%M:%S")
interdata[, 3] <- as.numeric(interdata[, 3])
png(filename = "plot2.png")
plot(datetime, interdata[, 3]/1000, type = "n", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(datetime, interdata[, 3]/1000)
dev.off()