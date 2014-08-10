fulldata <- read.csv("household_power_consumption.txt", na.strings = "?", sep = ";")
dates <- ((fulldata[, 1] == "1/2/2007") | (fulldata[, 1] == "2/2/2007"))
interdata <- fulldata[dates, ]
interdata[, 1] <- as.Date(interdata[, 1], "%d/%m/%Y")
interdata[, 3] <- as.numeric(interdata[, 3])
png(filename = "plot1.png")
hist(interdata[, 3], freq = TRUE, col = "red", xlab = 
         "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()