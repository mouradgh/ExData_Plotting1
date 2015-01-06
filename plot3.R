setwd("ExData_Plotting1")

#reading data
data <- read.table(file="household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")

#converting the Date variables to Date classe
data$Date = as.Date(data$Date, format="%d/%m/%Y")


#subsetting 
data <- data[(data$Date >= "2007-02-01" & data$Date <="2007-02-02"),]

#opening the device to save as png
png(filename='plot2.png')

#making the plot
plot(strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S"), data$Global_active_power, type='l',xlab="", ylab = "Global Active Power (kilowatts)")

#closing the device
dev.off()