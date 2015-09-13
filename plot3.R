#Plot 3

setwd("C:/Users/anizah/ExData_Plotting1")
data_House <- "C:/Users/anizah/ExData_Plotting1/household_power_consumption.txt"
dataHse <- read.table(data_House, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSet_DataHse <- dataHse[dataHse$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subSet_DataHse$Date, subSet_DataHse$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSet_DataHse$Global_active_power)
sub_Metering1 <- as.numeric(subSet_DataHse$Sub_metering_1)
sub_Metering2 <- as.numeric(subSet_DataHse$Sub_metering_2)
sub_Metering3 <- as.numeric(subSet_DataHse$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, 
     sub_Metering1, 
     type="l", 
     ylab="Energy sub metering", 
     xlab="")
lines(datetime, 
      sub_Metering2, 
      type="l", 
      col="red")
lines(datetime,
      sub_Metering3,
      type="l",
      col="blue")
legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
