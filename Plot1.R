# Load necessary libraries
library(dplyr)

# Read the dataset
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

# Convert Date and Time to Date/Time classes
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- as.POSIXct(data$Time, format = "%H:%M:%S")

# Subset the data to include only data from February 1st and February 2nd, 2007
data_subset <- data[data$Date %in% as.Date(c("2007-02-01", "2007-02-02")), ]

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Read the data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

# Convert Date and Time to Date/Time classes
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- as.POSIXct(data$Time, format = "%H:%M:%S")

# Subset the data to include only data from February 1st and February 2nd, 2007
data_subset <- data[data$Date %in% as.Date(c("2007-02-01", "2007-02-02")), ]

# Create histogram plot
hist(data[, 3], col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

# Save plot to PNG file with dimensions in pixels
ggsave("plot1.png", width = 480, height = 480, units = "px")


