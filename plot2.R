#Plot 2 
setwd("C:/Users/anizah/ExData_Plotting1")
data_House <- "C:/Users/anizah/ExData_Plotting1/household_power_consumption.txt"
dataHse <- read.table(data_House, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSet_DataHse <- dataHse[dataHse$Date %in% c("1/2/2007","2/2/2007") ,]

##structured subset of DataHouse
datetime <- strptime(paste(subSet_DataHse$Date, subSet_DataHse$Time, sep=" "), 
                     "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSet_DataHse$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, 
     globalActivePower, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")
dev.off()
