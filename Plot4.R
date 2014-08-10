source("readingdata.R")

Plot4 <- function() {
    tbl <- readingdata()
    tbl$Date <- strptime(paste(tbl$Date,tbl$Time), "%d/%m/%Y %H:%M:%S")
   
    png(filename = "Plot4.png", width = 480, height = 480, units = "px")
   par(mfrow=c(2,2))
  #Plot 1
  with(tbl, plot(Date, Global_active_power, type="l", xlab="", ylab="Global Active Power"))
  #Plot 2
  with(tbl, plot(Date, Voltage, type="l", xlab="datetime", ylab="Voltage"))
  
  #Plot3
  with(tbl, {
     plot(Date, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
     lines(Date, Sub_metering_2, type="l", col="red")
     lines(Date, Sub_metering_3, type="l", col="blue")
   })
 
 legend("topright", col=c("black", "blue", "red"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1, 1, 1), xjust = 1, yjust = 1)


  #Plot4
  with(tbl, plot(Date, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power"))

  dev.off()
}

Plot4()