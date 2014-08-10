source("readingdata.R")

Plot3 <- function() {
    tbl <- readingdata()
    tbl$Date <- strptime(paste(tbl$Date,tbl$Time), "%d/%m/%Y %H:%M:%S")
    png(filename = "Plot3.png", width = 480, height = 480, units = "px")

   with(tbl, {
     plot(Date, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
     lines(Date, Sub_metering_2, type="l", col="red")
     lines(Date, Sub_metering_3, type="l", col="blue")
   })
 
 legend("topright", col=c("black", "blue", "red"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1, 1, 1), xjust = 1, yjust = 1)
    
    
    dev.off()
}
Plot3()