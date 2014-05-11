setwd("C:\\Users\\gassi\\Downloads\\MOOCs\\Exploratory Data Analysis\\Project1")
cons<-read.table("household_power_consumption.txt",header=TRUE,sep=";", dec=".",na.strings="?")
cons1 <- cons[cons$Date=="1/2/2007"|cons$Date=="2/2/2007",]

cons1$Date <-as.Date(cons1$Date,tz="UTC")
cons1$Global_active_power <-as.character(cons1$Global_active_power)
cons1$Global_active_power <-as.numeric(cons1$Global_active_power)
png("plot1.png",width=480, height=480, units="px",bg="white")
hist(cons1$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()