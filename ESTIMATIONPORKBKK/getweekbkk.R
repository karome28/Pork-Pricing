library(tidyverse)
library(readr)
library(lubridate)

Sys.setlocale(locale = "Thai")
read.csv("/2022/For estimation/√“§“wet1/BKK1W1.csv")

# rename and choose specific column
BKKDATA <- BKK1W1 %>% 
  rename(Product_code = rProduct_code, PriceperKg = rGross_price, Date_col = sEffective_date_p) %>%
  select(Product_code,PriceperKg,Date_col)

#Change to class date  
#BKKDATA %>%
    #mutate(Date_col=as.Date(Date_col, format = "%d/%m/%Y")) 
BKKDATA <- BKKDATA %>% mutate(Date_col=as.Date(Date_col, format = "%d/%m/%Y"))
d1 <- (BKKDATA$Date_col %m-% years(543))

BKKDATA <- cbind(BKKDATA,d1)
#Delete COlumn
BKKDATA$Date_col <-NULL
# or BKKDATA["WeeK_num"] <- week_num

#Create week Column
week_num = strftime(BKKDATA$d1, format = "%V")
BKKDATA <- cbind(BKKDATA,week_num)

write.csv(BKKDATA, file = "BKKDATA.csv")


