# plot4.R - this file will re-produce the multi chart graph as a
#   png file named plot4.png
#

# if we don't have the data available, then go get it
if (!exists("mydf")) {
  source('get_power_data_file.R')
}
calledFromPlot4<-TRUE
# set pngOutput to false to write to screen
plot4pngOutput<-TRUE
if (plot4pngOutput) {
  png(file="plot4.png")
}

par(mfcol=c(2,2))

# Time to actually create the graph

# Same as plot2
source("plot2.R")

# Same as plot2
source("plot3.R")

with(mydf,
     plot(DateTime,Voltage,
          type="l",
          main="",
          xlab="datetime",
          ylab="Voltage"
     ))
with(mydf,
     plot(DateTime,Global_reactive_power,
          type="l",
          main="",
          xlab="datetime",
          ylab="Global_reactive_power"
     ))
# closes the png device if necessary
if (plot4pngOutput) {
  dev.off()
}
rm(calledFromPlot4)
rm(plot4pngOutput)
