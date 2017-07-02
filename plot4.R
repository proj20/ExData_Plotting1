# Download and tidy into working data, called `hpcdata``
source("data_tidying.R")

# plot4
par(mfcol=c(2,2))

# plot4.1
plot(hpcdata$Time,hpcdata$Global_active_power,
     type="l",
     ylab="Global Active Power",
     xlab="",
     col="black")

# plot4.2
plot(hpcdata$Time,hpcdata$Sub_metering_1,
     type="l",
     ylab="Energy sub metering",
     xlab="",
     col="black")
points(hpcdata$Time,hpcdata$Sub_metering_2,
       type="l",
       col="red")
points(hpcdata$Time,hpcdata$Sub_metering_3,
       type="l",
       col="blue")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),
       lty=1,cex = 0.7,
       bty="n")

# plot4.3
plot(hpcdata$Time,hpcdata$Voltage,
     type="l",
     ylab="Voltage",
     xlab="datetime",
     col="black")

# plot4.4
plot(hpcdata$Time,hpcdata$Global_reactive_power,
     type="l",
     ylab="Global_reactive_power",
     xlab="datetime",
     col="black")


dev.copy(png, file="plot4.png", width = 480, height = 480)
dev.off()
