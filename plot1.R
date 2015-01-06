setwd("ExData_Plotting1")

#reading data
data <- read.table(file="household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")

#converting the Date variables to Date classe
data$Date = as.Date(data$Date, format="%d/%m/%Y")


#subsetting 
data <- data[(data$Date >= "2007-02-01" & data$Date <="2007-02-02"),]

#opening the device to save as png
png(filename='plot1.png')

#making the plot
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")

#closing the device
dev.off()