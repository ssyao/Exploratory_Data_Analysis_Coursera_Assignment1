setwd("C:/YSS/I2R/Course/Exploratory data analysis Coursera")

data_all <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
data_all <- tbl_df(data_all)
data_part <- subset(data_all,data_all$Date=="1/2/2007"|data_all$Date=="2/2/2007")

png(filename = "plot3.png", width=480, height=480)
datetime <- strptime(paste(data_part$Date, data_part$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, data_part$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering",col="black",ylim=c(0,40))
par(new=TRUE)
plot(datetime, data_part$Sub_metering_2, type="l", xlab="", ylab="",col="red",ylim=c(0,40))
par(new=TRUE)
plot(datetime, data_part$Sub_metering_3, type="l", xlab="", ylab="",col="blue",ylim=c(0,40))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))

dev.off()
