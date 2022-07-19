library('dplyr')


df <- read.table('household_power_consumption.txt',sep=';',header=T)
df <- filter(df,Date %in% c('1/2/2007','2/2/2007'))
date <- paste(df$Date,df$Time)
date <- strptime(date,'%d/%m/%Y %H:%M:%S')
plot(date,df$Global_active_power,type='l',ylab='Global Active Power (kilowatts)',xlab='',main='')
dev.copy(png,'plot2.png')
dev.off()