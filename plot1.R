# plot1.R - this file will re-produce the histogram graph as a
#   png file named plot1.png
#
# if we don't have the data available, then go get it
if (!exists("mydf")) {
  source('get_power_data_file.R')
}

# set pngOutput to false to write to screen
pngOutput<-FALSE
if (pngOutput) {
  png(file="plot1.png")
}

# Time to actually create the graph
with(mydf,
     hist(Global_active_power,
          main="Global Active Power",
          xlab="Global Active Power (kilowatts)",
          col="red"))


# closes the png device if necessary
if (pngOutput) {
  dev.off()
}
