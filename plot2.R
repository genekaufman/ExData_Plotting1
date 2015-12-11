# plot2.R - this file will re-produce the line chart as a
#   png file named plot2.png
#
# if we don't have the data available, then go get it
if (!exists("mydf")) {
  source('get_power_data_file.R')
}

# set pngOutput to false to write to screen
pngOutput<-TRUE
# the y axis label is slightly different from plot2 and the version
# of this chart in plot4
ylabel<-"Global Active Power (kilowatts)"

# force screen output when included in plot4.R
if (exists("calledFromPlot4")) { 
  message("plot2 called from plot4!!!")
  pngOutput<-FALSE
  ylabel<-"Global Active Power"
}

if (pngOutput) {
  png(file="plot2.png")
}

# Time to actually create the graph
with(mydf,
     plot(DateTime,Global_active_power,
          type="l",
          main="",
          xlab="",
          ylab=ylabel
          ))

# closes the png device if necessary
if (pngOutput) {
  dev.off()
}
