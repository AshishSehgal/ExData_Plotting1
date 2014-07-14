source("readingdata.R")

Plot2 <- function() {
    tbl <- readingdata()
    png(filename = "plot2.png", width = 480, height = 480, units = "px")
    plot(tbl$DateTime, tbl$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    dev.off()
}

Plot2()