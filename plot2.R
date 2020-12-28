x <- read.table("C:\\Users\\Hp\\Downloads\\exdata_data_household_power_consumption\\household_power_consumption.txt", skip = 1, sep = ";")
colnames(x) <- c("Date", "Time", "Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

sub <- subset(x, x$Date == "1/2/2007" | x$Date == "2/2/2007")


datetime <- strptime(paste(sub$Date, sub$Time), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(sub$Global_active_power)
plot(datetime, globalActivePower, type = "l", xlab = " ", ylab = "Global Active Power (Kilowatts)", main = "Global Active Power VS Time")