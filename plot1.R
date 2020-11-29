setwd("C:/YSS/I2R/Course/Exploratory data analysis Coursera")

data_all <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data_part <- subset(data_all, Date %in% c("1/2/2007","2/2/2007"))
data_part$Date <- as.Date(data_part$Date, format="%d/%m/%Y")

png(filename = "plot1.png", width=480, height=480)
hist(data_part$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()
