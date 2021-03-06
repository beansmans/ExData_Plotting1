x <- read.table("C:\\Users\\Hp\\Downloads\\exdata_data_household_power_consumption\\household_power_consumption.txt", skip = 1, sep = ";")
colnames(x) <- c("Date", "Time", "Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

sub <- subset(x, x$Date == "1/2/2007" | x$Date == "2/2/2007")

datetime <- strptime(paste(sub$Date, sub$Time), "%d/%m/%Y %H:%M:%S")

sub1 <- as.numeric(sub$Sub_metering_1)
sub2 <- as.numeric(sub$Sub_metering_2)
sub3 <- as.numeric(sub$Sub_metering_3)

plot(datetime, sub1, type = "n", ylab="Energy Submetering", xlab="")
lines(datetime, sub1)
lines(datetime, sub2, col = "red")
lines(datetime, sub3, col = "blue")

legend("topright", c("Submetering 1", "Submetering 2", "Submetering 3"), col = c("black", "red", "blue"), lty = 1)
