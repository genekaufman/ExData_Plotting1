if (!exists("mydf")) {
  source('get_power_data_file.R')
}
pngOutput<-TRUE
if (pngOutput) {
  png(file="plot1.png")
}
with(mydf,
     hist(Global_active_power,
          main="Global Active Power",
          xlab="Global Active Power (kilowatts)",
          col="red"))
if (pngOutput) {
  dev.off()
}
