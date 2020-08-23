
## Plot 1

## OBJECTIVE
## 1. read the household_power_consumption.txt file
## 2. subset for data taken from 2 days: 2007-02-01 and 2007-02-02
## 3. generate a histogram of global active power(kilowatts)



data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                        comment.char="", quote='\"')

data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))

data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## For PNG file

png("plot1.png", width=480, height=480)
dev.off()