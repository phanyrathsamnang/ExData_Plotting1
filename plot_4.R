## Make png file

png("Plot4.png", width = 480, height = 480)

## Make combine plot layout
par(mfrow=c(2,2))

## Plot  top left chart
plot(DateTime, as.numeric(as.character(Power_Data$Global_active_power)),
     type = "l", xlab="DateTime", ylab="Global Active Power (Kilowatts)")

## Plot top right chart
plot(DateTime, as.numeric(as.character(Power_Data$Voltage)),
     type = "l", xlab="DateTime", ylab="Voltage")

## Plot bottom left chart
plot(DateTime,as.numeric(as.character(Power_Data$Sub_metering_1)),
     type="l",
     xlab="DateTime", ylab="Energy sub metering")

legend("topright", lty=1, cex=0.4,
       col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

lines(DateTime, as.numeric(as.character(Power_Data$Sub_metering_2)),
      type="l", col="red")

lines(DateTime, as.numeric(as.character(Power_Data$Sub_metering_3)),
      type="l", col="blue")

## Plot bottom right chart
plot(DateTime, as.numeric(as.character(Power_Data$Global_reactive_power)),
     type = "l", xlab="DateTime", ylab="Global_reactive_power")

dev.off()
