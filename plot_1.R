## File

File<-("/Users/phanyrathsamnang/Desktop/household_power_consumption.txt")

## Read Data

Power<-read.table(File, header=TRUE, sep=";")
Power$Date<-as.Date(Power$Date, format='%d/ %m/ %Y')
Power_Data<-Power[Power$Date %in% as.Date(c('2007-02-01','2007-02-02')),]

## Make png file

png("plot1.png",width = 480, height = 480)


## Plot chart

hist(as.numeric(as.character(Power_Data$Global_active_power)), 
     col="red", xlab="Global Active Power(kilowatts)",
     main = "Global ACtive Power")

dev.off()