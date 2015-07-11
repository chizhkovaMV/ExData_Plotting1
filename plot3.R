source("load_data.R")##loading data
data<-load_data()

Sys.setlocale("LC_TIME", "English") ##settings for english language

png("plot3.png", height = 480, width = 480, bg = "transparent")
plot(data$Datetime,data$Sub_metering_1,type="l",col="black", ylab="Energy sub metering",xlab="")
lines(data$Datetime,data$Sub_metering_2,type="l",col="red")
lines(data$Datetime,data$Sub_metering_3,type="l",col="blue")
legend("topright",bty="o",col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, lwd=1)
dev.off()




