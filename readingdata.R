readingdata<-function(){
	tbl <- read.table("household_power_consumption.txt", header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
      tbl <- tbl[(tbl$Date == "1/2/2007") | (tbl$Date == "2/2/2007"),]
tbl
}