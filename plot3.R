
plot3 <- function(data)
{
    png("plot3.png")
    doplot3(data)
    dev.off()
}


doplot3 <- function(data)
{
    plot(Sub_metering_1 ~ DateTime, data=data,
         type="n",
         xaxt = "n",
         xlab = "",
         ylab = "Energy sub metering" )
    lines( Sub_metering_1 ~ DateTime, data=data, col = "black")
    lines( Sub_metering_2 ~ DateTime, data=data, col = "red")
    lines( Sub_metering_3 ~ DateTime, data=data, col = "blue")

    legend("topright",
           col = c("black", "red", "blue"), lty=1,
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

    axis.POSIXct(1,
                 x = data$DateTime,
                 at = seq(dateMin, dateMax, by = "day"),
                 labels = c("Thu", "Fri", "Sat")
                 #format = "-%a-"
    )
}
