par(mfrow= c(1,1))
hist(hpc$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (Kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
