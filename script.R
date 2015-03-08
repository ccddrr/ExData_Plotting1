

dataDir = "exdata-data-household_power_consumption/"
dataFilename = "household_power_consumption.txt"

dataCache = "cache.txt"

dateMin <- as.POSIXct("2007-02-01")
dateMax <- as.POSIXct("2007-02-03")


if( file.exists(dataCache) )
{
    data <- read.table(dataCache, header = TRUE, sep = ";")
} else {
    data <- read.csv(file.path(dataDir, dataFilename),
                     header = TRUE,
                     sep = ";",
                     na.strings = "?")

    dates <- as.Date(data$Date, format="%d/%m/%Y")

    data <- data[ dates >= dateMin & dates < dateMax, ]

    dt <- paste( data$Date, data$Time )

    data$DateTime <- strptime(dt, format="%d/%m/%Y %H:%M:%S")

    write.table( data, dataCache, row.names = FALSE, sep = ";" )
}
data$DateTime <- as.POSIXct(data$DateTime)


source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")




