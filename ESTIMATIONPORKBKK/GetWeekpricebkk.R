setwd("D:/2022/For estimation/ESTIMATIONPORKBKK")

MAINBKK <- read.csv("/2022/For estimation/ESTIMATIONPORKBKK/MAINBKKUPDATE.csv")
Weekly <- read.csv("/2022/For estimation/Weekly2022_Price_SL.csv")
library(tidyverse)
Sys.setlocale(locale = "Thai")


sumshoulder <- MAINBKK %>% filter(Product_code == 23057672)
colnames(sumshoulder) <- c("Product_code","Product_name","Price_kg","date","week")
sumshoulder$week <- as.numeric(sumshoulder$week)
print(sumshoulder)

sumgrilled_neck <- MAINBKK %>% 
  filter(Product_code == 23057671)
colnames(sumgrilled_neck) <- c("Product_code","Product_name","Price_kg","date","week")
sumgrilled_neck$week <- as.numeric(sumgrilled_neck$week)
print(sumgrilled_neck)

sumthigh <- MAINBKK %>% 
  filter(Product_code == 23057673)
colnames(sumthigh) <- c("Product_code","Product_name","Price_kg","date","week")
sumthigh$week <- as.numeric(sumthigh$week)
print(sumthigh)

sumneck <- MAINBKK %>% 
  filter(Product_code == 23057676)
colnames(sumneck) <- c("Product_code","Product_name","Price_kg","date","week")
sumneck$week <- as.numeric(sumneck$week)
print(sumneck)

sumsirloin <- MAINBKK %>% 
  filter(Product_code == 23057674)
colnames(sumsirloin) <- c("Product_code","Product_name","Price_kg","date","week")
sumsirloin$week <- as.numeric(sumsirloin$week)
print(sumsirloin)

sumtenderloin <- MAINBKK %>% 
  filter(Product_code == 23057675)
colnames(sumtenderloin) <- c("Product_code","Product_name","Price_kg","date","week")
sumtenderloin$week <- as.numeric(sumtenderloin$week)
print(sumtenderloin)

sumbelly <- MAINBKK %>% 
  filter(Product_code == 23057677)
colnames(sumbelly) <- c("Product_code","Product_name","Price_kg","date","week")
sumbelly$week <- as.numeric(sumbelly$week)
print(sumbelly)

sumribs <- MAINBKK %>% 
  filter(Product_code == 23057678)
colnames(sumribs) <- c("Product_code","Product_name","Price_kg","date","week")
sumribs$week <- as.numeric(sumribs$week)
print(sumribs)

summeat <- MAINBKK %>% 
  filter(Product_code == 23069300)
colnames(summeat) <- c("Product_code","Product_name","Price_kg","date","week")
summeat$week <- as.numeric(summeat$week)
print(summeat)


