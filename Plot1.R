## Read data in R

power.reading <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE)

power.reading$Date <- as.Date(power.reading$Date, format="%d/%m/%Y")

#str(power.reading)

date1 <- as.Date("01/02/2007", format="%d/%m/%Y")
date2 <- as.Date("02/02/2007", format="%d/%m/%Y")

power.reading2 <- subset(power.reading, (power.reading$Date == date1 | power.reading$Date == date2))

# Plot 1 : 

hist(as.numeric(power.reading2$Global_active_power), 
     main = "Global Active Power", 
     col="red", 
     xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()