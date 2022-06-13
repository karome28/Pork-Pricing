library(tidyverse)
library(readr)
library(lubridate)
library(dplyr)
setwd("D:/2022/For estimation")
Sys.setlocale(locale = "Thai")
BKK1W1_26_5_65 <- read.csv("/2022/For estimation/ราคาหมูwet1/nextweek/Wk21/BKK1W1_26_5_65.csv")
BKK1W1_2_6_65 <- read.csv("/2022/For estimation/ราคาหมูwet1/nextweek/Wk22/BKK1W1_2_6_65.csv")
# rename and choose specific column
BKK1W1_26_5_65 <- BKK1W1_26_5_65 %>% 
  rename(Product_code = rProduct_code,Product_name = rProduct_listName, PriceperKg = rGross_price, Date_col = sEffective_date_p) %>%
  select(Product_code,Product_name,PriceperKg,Date_col)

BKK1W1_2_6_65 <- BKK1W1_2_6_65 %>% 
  rename(Product_code = rProduct_code,Product_name = rProduct_listName, PriceperKg = rGross_price, Date_col = sEffective_date_p) %>%
  select(Product_code,Product_name,PriceperKg,Date_col)

#Change to class date  
#BKKDATA %>%
#mutate(Date_col=as.Date(Date_col, format = "%d/%m/%Y")) 
BKK1W1_26_5_65 <- BKK1W1_26_5_65 %>% mutate(Date_col=as.Date(Date_col, format = "%d/%m/%Y"))
BKK1W1_26_5_65$d1 <- (BKK1W1_26_5_65$Date_col %m-% years(543))

BKK1W1_2_6_65 <- BKK1W1_2_6_65 %>% mutate(Date_col=as.Date(Date_col, format = "%d/%m/%Y"))
BKK1W1_2_6_65$d1 <- (BKK1W1_2_6_65$Date_col %m-% years(543))

BKK1W1_26_5_65$Date_col <-NULL
# or BKKDATA["WeeK_num"] <- week_num

BKK1W1_2_6_65$Date_col <-NULL

#Create week Column
week_num = strftime(BKK1W1_26_5_65$d1, format = "%V")
BKK1W1_26_5_65 <- cbind(BKK1W1_26_5_65,week_num)
#filter only main product
target <- c("23057671","23057672","23057673","23057674","23057675","23057676","23057677","23057678","23069300")
BKK1W1_26_5_65 <- BKK1W1_26_5_65 %>% filter(Product_code %in% target)
BKK1W1_26_5_65$d1 <- as.character(BKK1W1_26_5_65$d1)
#change week number on still price
BKK1W1_26_5_65["week_num"][BKK1W1_26_5_65["week_num"] == 20] <- 21
BKK1W1_26_5_65["d1"][BKK1W1_26_5_65["d1"] == "2022-05-19"] <- "2022-05-26"
BKK1W1_26_5_65["d1"][BKK1W1_26_5_65["d1"] == "2022-05-26"] <- "5/26/2022"
BKK1W1_26_5_65
write.csv(BKK1W1_26_5_65,"D:/2022/For estimation/ราคาหมูwet1/nextweek/Wk21/BKK1W1_26_5_65_cleaned.csv")



week_num = strftime(BKK1W1_2_6_65$d1, format = "%V")
BKK1W1_2_6_65 <- cbind(BKK1W1_2_6_65,week_num)
BKK1W1_2_6_65 <- BKK1W1_2_6_65 %>% filter(Product_code %in% target)
BKK1W1_2_6_65$d1 <- as.character(BKK1W1_2_6_65$d1)
BKK1W1_2_6_65["week_num"][BKK1W1_2_6_65["week_num"] == 20] <- 22
BKK1W1_2_6_65["week_num"][BKK1W1_2_6_65["week_num"] == 21] <- 22
BKK1W1_2_6_65["d1"][BKK1W1_2_6_65["d1"] == "2022-05-19"] <- "2022-06-02"
BKK1W1_2_6_65["d1"][BKK1W1_2_6_65["d1"] == "2022-05-26"] <- "2022-06-02"
BKK1W1_2_6_65["d1"][BKK1W1_2_6_65["d1"] == "2022-06-02"] <- "2/6/2022"
BKK1W1_2_6_65
write.csv(BKK1W1_26_5_65,"D:/2022/For estimation/ราคาหมูwet1/nextweek/Wk21/BKK1W1_26_5_65_cleaned.csv")
write.csv(BKK1W1_2_6_65,"D:/2022/For estimation/ราคาหมูwet1/nextweek/Wk22/BKK1W1_2_6_65_cleaned.csv")




BKK1W1_12_5_65 <- read.csv("/2022/For estimation/ราคาหมูwet1/nextweek/Wk19/BKK1W1_12_5_65_cleaned.csv")
BKK1W1_19_5_65 <- read.csv("/2022/For estimation/ราคาหมูwet1/nextweek/Wk20/BKK1W1_19_5_65_cleaned.csv")
MAINBKK <- read.csv("/2022/For estimation/ESTIMATIONPORKBKK/MAINBKK.csv")
MAINBKK <- MAINBKK %>% drop_na()


setwd("D:/2022/For estimation/ESTIMATIONPORKBKK")
#get week 19-21
BKK1W1_12_5_65 <- subset(BKK1W1_12_5_65, select = -c(1))
BKK1W1_19_5_65 <- subset(BKK1W1_19_5_65, select = -c(1))
MAINBKK <- rbind(MAINBKK, BKK1W1_12_5_65)
MAINBKK <- rbind(MAINBKK, BKK1W1_19_5_65)
MAINBKK <- rbind(MAINBKK, BKK1W1_26_5_65)
MAINBKK <- rbind(MAINBKK, BKK1W1_2_6_65)
MAINBKK
write.csv(MAINBKK, "D:/2022/For estimation/ESTIMATIONPORKBKK/MAINBKKUPDATE.csv", row.names = FALSE)


