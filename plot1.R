## global active power plot1 code

data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))

png(file="/Users/nicholashitt/Dropbox/My Mac (Nicholas’s MacBook Pro)/Desktop/ExData_Plotting1/plot1.png",
    width=480, height=480)
hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power",col = "red")
dev.off()
