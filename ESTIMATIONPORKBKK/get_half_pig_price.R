setwd("D:/2022/For estimation/ESTIMATIONPORKBKK")

BKK1W1 <-read.csv("/2022/For estimation/�Ҥ����wet1/BKK1W1.csv")
library(tidyverse)
library(lubridate)
Sys.setlocale(locale = "Thai")

#real_price = ราคาหมูเป็น
half_pig<- BKK1W1 %>% filter(rProduct_code == 23068096)
half_pig<- half_pig %>% filter(rGross_price <= 1000)

#หมูซีก
half_pig <- half_pig %>%
  select(rProduct_code, rGross_price, sEffective_date_p)

#change year 2022->2565
half_pig <- half_pig %>% mutate(sEffective_date_p=as.Date(sEffective_date_p, format = "%d/%m/%Y"))
d1 <- (half_pig$sEffective_date_p %m-% years(543))

#get week number
week_num = strftime(half_pig$sEffective_date_p, format = "%V")
half_pig <- cbind(half_pig,week_num)
half_pig$week_num <- as.numeric(half_pig$week_num)
colnames(half_pig) <- c("Product_code","Price_kg","date","week")
half_pig <- half_pig[-c(4,6,9:10,14,21:22,24,26),]
half_pig
#write.csv(half_pig, file = "halfpigBKK.csv",row.names = FALSE)

#get number of data to match with SL
#half_pig <- read.csv("/2022/For estimation/ESTIMATIONPORKBKK/halfpigBKK.csv")
#insert price week 19th
half_pig <- rbind(half_pig, c(23068096,120,paste0(2565, "-", "05","-11"),19))
half_pig <- rbind(half_pig, c(23068096,123,paste0(2565, "-", "05","-19"),20))
half_pig <- rbind(half_pig, c(23068096,125,paste0(2565, "-", "05","-26"),21))
#change class
half_pig

sumshoulder <- merge(sumshoulder, half_pig, by="week",all.x = TRUE)
sumshoulder <- subset(sumshoulder, select = c(1:5,7))
colnames(sumshoulder) <- c("week","Product_code","Product_name","Price_kg","date","halfpigprice")

sumthigh <- merge(sumthigh, half_pig, by="week",all.x = TRUE)
sumthigh <- subset(sumthigh, select = c(1:5,7))
colnames(sumthigh) <- c("week","Product_code","Product_name","Price_kg","date","halfpigprice")


sumbelly <- merge(sumbelly, half_pig, by="week",all.x = TRUE)
sumbelly <- subset(sumbelly, select = c(1:5,7))
colnames(sumbelly) <- c("week","Product_code","Product_name","Price_kg","date","halfpigprice")


sumgrilled_neck <- merge(sumgrilled_neck, half_pig, by="week",all.x = TRUE)
sumgrilled_neck <- subset(sumgrilled_neck, select = c(1:5,7))
colnames(sumgrilled_neck) <- c("week","Product_code","Product_name","Price_kg","date","halfpigprice")


sumneck <- merge(sumneck, half_pig, by="week",all.x = TRUE)
sumneck <- subset(sumneck, select = c(1:5,7))
colnames(sumneck) <- c("week","Product_code","Product_name","Price_kg","date","halfpigprice")


summeat <- merge(summeat, half_pig, by="week",all.x = TRUE)
summeat <- subset(summeat, select = c(1:5,7))
colnames(summeat) <- c("week","Product_code","Product_name","Price_kg","date","halfpigprice")


sumtenderloin <- merge(sumtenderloin, half_pig, by="week",all.x = TRUE)
sumtenderloin <- subset(sumtenderloin, select = c(1:5,7))
colnames(sumtenderloin) <- c("week","Product_code","Product_name","Price_kg","date","halfpigprice")


sumsirloin <- merge(sumsirloin, half_pig, by="week",all.x = TRUE)
sumsirloin <- subset(sumsirloin, select = c(1:5,7))
colnames(sumsirloin) <- c("week","Product_code","Product_name","Price_kg","date","halfpigprice")


sumribs <- merge(sumribs, half_pig, by="week",all.x = TRUE)
sumribs <- subset(sumribs, select = c(1:5,7))
colnames(sumribs) <- c("week","Product_code","Product_name","Price_kg","date","halfpigprice")


