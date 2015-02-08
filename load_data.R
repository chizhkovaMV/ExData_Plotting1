##Load data
##Download and extract the zip file into your working directory (link https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip) 

load_data<-function() {
	file<-"household_power_consumption.txt" 
	c<-c("character","character",rep("numeric",7)) ##classes of data

	dataset<-read.table(file,header=T,sep=";",dec = ".", na.strings = "?", colClasses = c,stringsAsFactors =F) ##reading data

	dataset$Date <- as.Date(dataset$Date, format="%d/%m/%Y") ##coercing character to data format
	data <- subset(dataset, subset=(Date >= "2007-02-01" & Date <= "2007-02-02")) ##subsetting data by the task principle

	datetime <- paste(as.Date(data$Date), data$Time) ##sticking together date and time
	data$Datetime <- as.POSIXct(datetime) 
	data
			}
