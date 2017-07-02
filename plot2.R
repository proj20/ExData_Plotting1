# Download and tidy into working data, called `hpcdata``
source("data_tidying.R")

# plot2
plot(hpcdata$Time,hpcdata$Global_active_power,
     type="l",
     ylab="Global Active Power (kilowatts)",
     xlab="",
     col="black")
dev.copy(png, file="plot2.png", width = 480, height = 480)
dev.off()
