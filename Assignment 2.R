library (tidyverse)
library(readr)
#read in data
US<-read_csv("us-states.csv") # Failed to read from submodule
PA<-filter(US, state=="Pennsylvania")
n<-length(US$date)

#increase cases variable
PA$incr_cases<-1
for (i in 2:n)
{
  PA$incr_cases[i]<-(PA$cases[i]-PA$cases[i-1])
}
#increase in deaths variable
PA$incr_deaths<-1
for (i in 2:n)
{
  PA$incr_deaths[i]<-(PA$deaths[i]-PA$deaths[i-1])
}
#check work
check<-sd(PA$incr_cases)
check
