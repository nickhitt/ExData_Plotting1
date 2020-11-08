## global active power plot3 code
library("lubridate")
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))

SetTime <-strptime(paste(data1$Date, data1$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data1 <- cbind(SetTime, data1)

png(file="/Users/nicholashitt/Dropbox/My Mac (Nicholas’s MacBook Pro)/Desktop/ExData_Plotting1/plot3.png",
    width=480, height=480)
plot(data1$SetTime, data1$Sub_metering_1, xlab = "",
     ylab="Energy sub metering",col = "black",type="l")

lines(data1$SetTime, data1$Sub_metering_2, col = "red",type="l")

lines(data1$SetTime, data1$Sub_metering_3, col = "blue",type="l")

legend("topright", 
       c("black", "blue", "red"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty="solid")

dev.off()