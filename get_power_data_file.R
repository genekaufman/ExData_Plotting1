library(dplyr)
#download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","power_consumption.zip",mode="wb")
unzip("power_consumption.zip")
mydata<-read.table("household_power_consumption.txt",header = TRUE,sep=";")
unlink("household_power_consumption.txt")
mydf<-tbl_df(mydata) %>%
#mutate(Date = as.Date(Date,format="%d/%m/%Y") )%>%
mutate(DateTime = as.POSIXct(strptime(paste(Date,Time),format="%d/%m/%Y %H:%M:%S")))
rm(mydata)
