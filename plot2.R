plot2 <- function(data)
{
    png("plot2.png")
    doplot2(data)
    dev.off()
}

doplot2 <- function(data)
{
    plot(Global_active_power ~ DateTime, data=data,
         type = "n",
         xlab = "",
         ylab = "Global Active Power (kilowatts)",
         xaxt = "n" )

    lines(Global_active_power ~ DateTime, data=data)

    axis.POSIXct(1,
                 x = data$DateTime,
                 at = seq(dateMin, dateMax, by = "day"),
                 labels = c("Thu", "Fri", "Sat")
                 #format = "-%a-"
    )
}