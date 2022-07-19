library('dplyr')


df <- read.table('household_power_consumption.txt',sep=';',header=T)
df <- filter(df,Date %in% c('1/2/2007','2/2/2007'))
date <- paste(df$Date,df$Time)
date <- strptime(date,'%d/%m/%Y %H:%M:%S')
plot(date,df$Sub_metering_1,main='',xlab='',ylab='Energy sub metering',type='l',lty=1,col='black')
points(date,df$Sub_metering_2,col='red',type='l',lty=1)
points(date,df$Sub_metering_3,col='blue',type='l',lty=1)
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty=c(1,1,1),xjust=0.5)
dev.copy(png,'plot3.png')
dev.off()
