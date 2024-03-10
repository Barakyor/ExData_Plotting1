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

# Create plot for Sub_metering_1, Sub_metering_2, and Sub_metering_3
ggplot(data_subset, aes(x = DateTime)) +
  geom_line(aes(y = Sub_metering_1, color = "Sub_metering_1")) +
  geom_line(aes(y = Sub_metering_2, color = "Sub_metering_2")) +
  geom_line(aes(y = Sub_metering_3, color = "Sub_metering_3")) +
  labs(title = "Energy Sub-metering",
       x = "Date",
       y = "Energy Sub-metering",
       color = "Sub-metering") +
  scale_color_manual(values = c("Sub_metering_1" = "red", "Sub_metering_2" = "blue", "Sub_metering_3" = "green"))

# Save plot to PNG file with dimensions in pixels
ggsave("plot1.png", width = 480, height = 480, units = "px")


