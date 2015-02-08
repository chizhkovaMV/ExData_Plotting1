source("load_data.R")##loading data
data<-load_data()

Sys.setlocale("LC_TIME", "English") ##settings for english language

png("plot2.png", height = 480, width = 480, bg = "transparent")
plot(data$Datetime,data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="", col="black")
dev.off()

