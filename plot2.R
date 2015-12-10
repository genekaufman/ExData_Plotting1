if (!exists("mydf")) {
  source('get_power_data_file.R')
}
pngOutput<-TRUE
if (pngOutput) {
  png(file="plot2.png")
}
with(mydf,
     plot(DateTime,Global_active_power,
          type="l",
          main="",
          xlab="",
          ylab="Global Active Power (kilowatts)"
          ))
if (pngOutput) {
  dev.off()
}
