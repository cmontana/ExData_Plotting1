if (exists("data") == FALSE){
  epc <- read.csv("household_power_consumption.txt", sep=";")
  data <- epc[(epc["Date"] == "1/2/2007") | (epc["Date"] == "2/2/2007"),]
  
}
png(filename="plot1.png",width = 480, height = 480, units = "px")
hist(as.numeric(as.character(data$Global_active_power)), col="red", main="Global Active Power", xlab="Global Active Power")
dev.off()