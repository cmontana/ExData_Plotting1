if (exists("data") == FALSE){
  epc <- read.csv("household_power_consumption.txt", sep=";")
  data <- epc[(epc["Date"] == "1/2/2007") | (epc["Date"] == "2/2/2007"),]
  
}
png(filename="plot2.png",width = 480, height = 480, units = "px")
plot(strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character(data$Global_active_power)),type="n", main="", xlab = "", ylab="Global Active Power (kilowatts)")
lines(strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character(data$Global_active_power)),type="l")
dev.off()