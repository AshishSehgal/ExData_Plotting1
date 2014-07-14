source("readingdata.R")

Plot1 <- function() {
    tbl <- readingdata()
    png(filename = "plot1.png", width = 480, height = 480, units = "px")
    hist(tbl$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
    dev.off()
}

Plot1()