par(mfrow(c(2,2)))
with(hpc, {
  plot(hpc$dateTime, hpc$Sub_metering_1, type="l", xlab ="", ylab="Energy sub metering" )
  lines(hpc$dateTime, hpc$Sub_metering_2, type="l", col="red")
  lines(hpc$dateTime, hpc$Sub_metering_3, type="l", col="blue")
})

legend("topright", lty=1, col=c("black","blue","red"), legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pt.cex=1, cex=1)
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()