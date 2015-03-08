doplot4a <- function(data)
{
    plot(Voltage ~ DateTime, data=data, type="l", xlab="datetime")
}


doplot4b <- function(data)
{
    plot(Global_reactive_power ~ DateTime, data=data, type="l", xlab="datetime")
}


plot4 <- function(data)
{
    png("plot4.png")

    par( mfcol = c(2,2) )

    doplot2(data)
    doplot3(data)

    doplot4a(data)
    doplot4b(data)

    dev.off()
}