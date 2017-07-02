# Optimizing Reading Large Dataset and `household_power_consumption.txt` Data Preparation

## Download the dataset
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile = "dataset.zip", mode = "wb")
unzip("dataset.zip", exdir = "C:/Users/User/Desktop/Coursera/Course4_EDA/Week1/Assignment")


## First, know your system available memory
system('wmic OS get FreePhysicalMemory /Value')


## Estimate how much memory is needed in loading the dataset `household_power_consumption.txt`, given the assigned hpcclass
datasize <- object.size(read.table("household_power_consumption.txt",sep = ";", header = T, nrows = 1000, na.strings = "?"))
nlines <- length(readLines("household_power_consumption.txt"))
required_memory <- datasize*(nlines/1000)


## Since FreePhysicalMemory > required_memory (estimated), proceed with loading the entire data set
hpcdata <- read.table("household_power_consumption.txt",sep = ";", header = T, na.strings = "?")
hpcdata <- hpcdata[(hpcdata$Date=="1/2/2007"|hpcdata$Date=="2/2/2007"),]
hpcdata$Time <- strptime(paste(hpcdata$Date, hpcdata$Time), "%d/%m/%Y %H:%M:%S")
hpcdata$Date <- as.Date(hpcdata$Date,"%d/%m/%Y")
head(hpcdata)
