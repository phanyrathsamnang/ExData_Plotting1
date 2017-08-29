## Plot3

png("Plot3.png", width=480, height=480)

plot(DateTime,as.numeric(as.character(Power_Data$Sub_metering_1)),
     type="l", xlab="DateTime", ylab="Energy sub metering")

legend("topright", lty=1, cex=0.6,
       col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

lines(DateTime, as.numeric(as.character(Power_Data$Sub_metering_2)), 
      type="l", col="red")

lines(DateTime, as.numeric(as.character(Power_Data$Sub_metering_3)), 
      type="l", col="blue")

dev.off()