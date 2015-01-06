setwd("ExData_Plotting1")

#reading data
data <- read.table(file="household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")

#converting the Date variables to Date classe
data$Date = as.Date(data$Date, format="%d/%m/%Y")


#subsetting 
data <- data[(data$Date >= "2007-02-01" & data$Date <="2007-02-02"),]


#opening the device to save as png
png(filename='plot4.png')

#changing the parameters
par(mfrow=c(2,2))

#making the plots

#First
plot(strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S"), data$Global_active_power, type='l',xlab="", ylab = "Global Active Power (kilowatts)")

#Second
plot(strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S"), data$Voltage, type='l',xlab="datetime", ylab = "Voltage")

#Third
plot(strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S"), data$Sub_metering_1, type='l',xlab="",ylab="Energy sub metering")
lines(strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S"), data$Sub_metering_2, type='l',col="red")
lines(strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S"), data$Sub_metering_3, type='l',col="blue")
legend("topright",lwd=1,col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

#Fourth
plot(strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S"), data$Global_reactive_power, type='l',xlab="datetime",ylab="Global_reactive_power")


#closing the device
dev.off()
