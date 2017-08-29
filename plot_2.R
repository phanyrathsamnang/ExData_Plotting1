# Plot2

DateTime<-as.POSIXct(paste(Power_Data$Date,Power_Data$Time))

png('Plot2.png', width = 480, height = 480)

plot(DateTime, as.numeric(as.character(Power_Data$Global_active_power)),
     type = "l", xlab="DateTime", ylab="Global Active Power (Kilowatts)")


dev.off()