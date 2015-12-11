# plot3.R - this file will re-produce the multi-line chart as a
#   png file named plot3.png
#
# if we don't have the data available, then go get it
if (!exists("mydf")) {
  source('get_power_data_file.R')
}

# set pngOutput to false to write to screen
pngOutput<-TRUE

# legend box type is drawn in plot3, but not in plot4
legendBty<-"o"

# force screen output when included in plot4.R
if (exists("calledFromPlot4")) {
  message("plot3 called from plot4!!!")
  pngOutput<-FALSE
  legendBty<-"n"
}
if (pngOutput) {
  png(file="plot3.png")
}

# Time to actually create the graph

# this will be used to determine the range for the y-axis
combined.sub.metering<-c(mydf$Sub_metering_1,mydf$Sub_metering_2,mydf$Sub_metering_3)

# get the range for the x and y axis
xrange <- range(mydf$DateTime)
yrange <- range(combined.sub.metering)

colors<-c("black","red","blue")

# create a blank plot
plot(xrange, yrange,
  type="n",
  main="",
  xlab="",
  ylab="Energy sub metering"
)

# add the lines
lines(mydf$DateTime,mydf$Sub_metering_1,type="l",col=colors[1])
lines(mydf$DateTime,mydf$Sub_metering_2,type="l",col=colors[2])
lines(mydf$DateTime,mydf$Sub_metering_3,type="l",col=colors[3])

line.names<-c(names(mydf)[7],names(mydf)[8],names(mydf)[9])

# add a legend
legend("topright",line.names, col=colors,  lty=c(1,1), bty=legendBty)

# clean up variables
rm(combined.sub.metering)
rm(xrange)
rm(yrange)
rm(line.names)
rm(colors)

# closes the png device if necessary
if (pngOutput) {
  dev.off()
}
