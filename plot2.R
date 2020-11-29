setwd("C:/YSS/I2R/Course/Exploratory data analysis Coursera")

data_all <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data_part <- subset(data_all, Date %in% c("1/2/2007","2/2/2007"))
data_part$Date <- as.Date(data_part$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data_part$Date), data_part$Time)
data_part$Datetime <- as.POSIXct(datetime)

## Plot 2
png(filename="plot2.png", height=480, width=480)
with(data_part, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

dev.off()

