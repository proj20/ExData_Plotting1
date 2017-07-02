# Download and tidy into working data, called `hpcdata``
source("data_tidying.R")

# plot1
hist(hpcdata$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")
dev.copy(png, file="plot1.png", width = 480, height = 480)
dev.off()
