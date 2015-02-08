source("load_data.R")##loading data
data<-load_data()

png("plot1.png", height = 480, width = 480, bg = "transparent")
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
dev.off()

