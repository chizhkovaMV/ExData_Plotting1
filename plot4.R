source("load_data.R")##loading data
data<-load_data()

Sys.setlocale("LC_TIME", "English") ##settings for english language

png("plot4.png", height = 480, width = 480, bg = "transparent")
par(mfrow=c(2,2))
hist(data$Global_active_power, xlab="Global Active Power (kilowatts)",main="", ylab="Frequency", col="red")
plot(data$Datetime,data$Voltage,type="l",ylab="Voltage",xlab="Datetime",col="black")
plot(data$Datetime,data$Sub_metering_1,type="l",col="blue", ylab="Energy sub metering",xlab="")
lines(data$Datetime,data$Sub_metering_3,type="l",col="black")
lines(data$Datetime,data$Sub_metering_2,type="l",col="red")
legend("topright",bty="n",col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, lwd=1)
plot(data$Datetime,data$Global_reactive_power,type="s",ylab="Globar_reactive_power",xlab="Datetime",col="black")
dev.off()


