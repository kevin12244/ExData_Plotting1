library('dplyr')


df <- read.table('household_power_consumption.txt',sep=';',header=T)
df <- filter(df,Date %in% c('1/2/2007','2/2/2007'))
with(df,hist(as.numeric(Global_active_power),main='Global Active Power', xlab='Global Active Power (kilowatts)',ylim=c(0,1200),col='red'))
dev.copy(png,'plot1.png')
dev.off()

