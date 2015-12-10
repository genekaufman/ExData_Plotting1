# plot2.R - this file will re-produce the line chart as a
#   png file named plot2.png
#
# if we don't have the data available, then go get it
if (!exists("mydf")) {
  source('get_power_data_file.R')
}

# set pngOutput to false to write to screen
pngOutput<-TRUE
if (pngOutput) {
  png(file="plot2.png")
}

# Time to actually create the graph
with(mydf,
     plot(DateTime,Global_active_power,
          type="l",
          main="",
          xlab="",
          ylab="Global Active Power (kilowatts)"
          ))

# closes the png device if necessary
if (pngOutput) {
  dev.off()
}
