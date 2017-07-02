# Download and tidy into working data, called `hpcdata``
source("data_tidying.R")

# plot3
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
       lty=1, lwd=1,
       col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       cex=0.8,
       adj = c(0,0.5))

dev.copy(png, file="plot3.png", width = 480, height = 480)
dev.off()
