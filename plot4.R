par(mfrow = c(2,2), adj=0.5, cex=0.8, cex.lab = 0.75, cex.axis=0.8)

with(hpc, {
  plot(hpc$dateTime, hpc$Global_active_power, type="l", xlab ="", ylab="Global Active Power" )
  
  plot(hpc$dateTime, hpc$Voltage, type="l", xlab = "datetime", ylab = "Voltage")
  
  plot(hpc$dateTime, hpc$Sub_metering_1, type="l", xlab ="", ylab="Energy sub metering" )
  lines(hpc$dateTime, hpc$Sub_metering_2, type="l", col="red")
  lines(hpc$dateTime, hpc$Sub_metering_3, type="l", col="blue")
  legend("topright", lty=1, col=c("black","blue","red"), legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pt.cex=1, cex=0.9, bty="n")
  
  plot(hpc$dateTime, hpc$Global_reactive_power, type="l", xlab ="datetime", ylab="Global_reactive_power" )
})

dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()