x <- read.table("C:\\Users\\Hp\\Downloads\\exdata_data_household_power_consumption\\household_power_consumption.txt", skip = 1, sep = ";")
colnames(x) <- c("Date", "Time", "Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

sub <- subset(x, x$Date == "1/2/2007" | x$Date == "2/2/2007")

hist(as.numeric(sub$Global_active_power), col = "red",main = "Global Active Power",
     xlab = "Global Active Power (Kilowatts)", ylab = "Frequency")