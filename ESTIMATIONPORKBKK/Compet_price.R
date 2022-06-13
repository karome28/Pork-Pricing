library(tidyverse)
Sys.setlocale(locale = "Thai")
setwd("D:/2022/For estimation/Competitor/")
week <- as.numeric(c(1:21))

#Get quota and Order
SLBKKSHOULDER <- read.csv("/2022/For estimation/Service_Level/SLBKKSHOULDER.csv")
SLBKKSHOULDER <- subset(SLBKKSHOULDER, select = c(3:4))
colnames(SLBKKSHOULDER) <- c("quota","Order")
SLBKKSHOULDER <- cbind(SLBKKSHOULDER,week)
sumshoulder <- merge(sumshoulder, SLBKKSHOULDER, by=c("week"),all = T)


SLBKKTHIGH <- read.csv("/2022/For estimation/Service_Level/SLBKKTHIGH.csv")
SLBKKTHIGH <- subset(SLBKKTHIGH, select = c(3:4))
colnames(SLBKKTHIGH) <- c("quota","Order")
SLBKKTHIGH <- cbind(SLBKKTHIGH,week)
sumthigh <- merge(sumthigh, SLBKKTHIGH, by=c("week"),all = T)


SLBKKSIRLOIN <- read.csv("/2022/For estimation/Service_Level/SLBKKSIRLOIN.csv")
SLBKKSIRLOIN <- subset(SLBKKSIRLOIN, select = c(3:4))
colnames(SLBKKSIRLOIN) <- c("quota","Order")
SLBKKSIRLOIN <- cbind(SLBKKSIRLOIN,week)
sumsirloin <- merge(sumsirloin, SLBKKSIRLOIN, by=c("week"),all = T)


SLBKKTENDERLOIN <- read.csv("/2022/For estimation/Service_Level/SLBKKTENDERLOIN.csv")
SLBKKTENDERLOIN <- subset(SLBKKTENDERLOIN, select = c(3:4))
colnames(SLBKKTENDERLOIN) <- c("quota","Order")
SLBKKTENDERLOIN <- cbind(SLBKKTENDERLOIN,week)
sumtenderloin <- merge(sumtenderloin, SLBKKTENDERLOIN, by=c("week"),all = T)


SLBKKNECK <- read.csv("/2022/For estimation/Service_Level/SLBKKNECK.csv")
SLBKKNECK <- subset(SLBKKNECK, select = c(3:4))
colnames(SLBKKNECK) <- c("quota","Order")
SLBKKNECK <- cbind(SLBKKNECK,week)
sumneck <- merge(sumneck, SLBKKNECK, by=c("week"),all = T)


SLBKKBELLY <- read.csv("/2022/For estimation/Service_Level/SLBKKBELLY.csv")
SLBKKBELLY <- subset(SLBKKBELLY, select = c(3:4))
colnames(SLBKKBELLY) <- c("quota","Order")
SLBKKBELLY <- cbind(SLBKKBELLY,week)
sumbelly <- merge(sumbelly, SLBKKBELLY, by=c("week"),all = T)


SLBKKRIBS <- read.csv("/2022/For estimation/Service_Level/SLBKKRIBS.csv")
SLBKKRIBS <- subset(SLBKKRIBS, select = c(3:4))
colnames(SLBKKRIBS) <- c("quota","Order")
SLBKKRIBS <- cbind(SLBKKRIBS,week)
sumribs <- merge(sumribs, SLBKKRIBS, by=c("week"),all = T)


SLBKKGRILL_NECK <- read.csv("/2022/For estimation/Service_Level/SLBKKGRILL_NECK.csv")
SLBKKGRILL_NECK <- subset(SLBKKGRILL_NECK, select = c(3:4))
colnames(SLBKKGRILL_NECK) <- c("quota","Order")
SLBKKGRILL_NECK <- cbind(SLBKKGRILL_NECK,week)
sumgrilled_neck <- merge(sumgrilled_neck, SLBKKGRILL_NECK, by=c("week"),all = T)




setwd("D:/2022/For estimation/Competitor/")
Compet_price3 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk3.csv")
Compet_price3 <- subset(Compet_price3, select = c(1:4))
Compet_price3 <- Compet_price3[-c(1:4,12,14:52),]
colnames(Compet_price3) <- c("Part","CP","Betagro","Thaifoods")

Compet_price4 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk4.csv")
Compet_price4 <- subset(Compet_price4, select = c(1:4))
Compet_price4 <- Compet_price4[-c(1:4,12,14:52),]
colnames(Compet_price4) <- c("Part","CP","Betagro","Thaifoods")

Compet_price5 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk5.csv")
Compet_price5 <- subset(Compet_price5, select = c(1:4))
Compet_price5 <- Compet_price5[-c(1:4,12,14:52),]
colnames(Compet_price5) <- c("Part","CP","Betagro","Thaifoods")

Compet_price6 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk6.csv")
Compet_price6 <- subset(Compet_price6, select = c(1:4))
Compet_price6 <- Compet_price6[-c(1:4,12,14:56),]
colnames(Compet_price6) <- c("Part","CP","Betagro","Thaifoods")

Compet_price7 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk7.csv")
Compet_price7 <- subset(Compet_price7, select = c(1:4))
Compet_price7 <- Compet_price7[-c(1:4,12,14:56),]
colnames(Compet_price7) <- c("Part","CP","Betagro","Thaifoods")

Compet_price8 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk8.csv")
Compet_price8 <- subset(Compet_price8, select = -c(1:2,7:19))
Compet_price8 <- Compet_price8[-c(1:4,12,14:56),]
colnames(Compet_price8) <- c("Part","CP","Betagro","Thaifoods")

Compet_price9 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk9.csv")
Compet_price9 <- subset(Compet_price9, select = -c(1:2,7:19))
Compet_price9 <- Compet_price9[-c(1:4,12,14:56),]
colnames(Compet_price9) <- c("Part","CP","Betagro","Thaifoods")

Compet_price10 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk10.csv")
Compet_price10 <- subset(Compet_price10, select = -c(1:2,7:19))
Compet_price10 <- Compet_price10[-c(1:4,12,14:56),]
colnames(Compet_price10) <- c("Part","CP","Betagro","Thaifoods")

Compet_price11 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk11.csv")
Compet_price11 <- Compet_price11[-c(1:4,13,15:60),]
Compet_price11 <- subset(Compet_price11, select = -c(1:2,7:19))
colnames(Compet_price11) <- c("Part","CP","Betagro","Thaifoods")

Compet_price12 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk12.csv")
Compet_price12 <- Compet_price12[-c(1:4,13,15:60),]
Compet_price12 <- subset(Compet_price12, select = -c(1:2,7:19))
colnames(Compet_price12) <- c("Part","CP","Betagro","Thaifoods")

Compet_price13 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk13.csv")
Compet_price13 <- Compet_price13[-c(1:4,13,15:132),]
Compet_price13 <- subset(Compet_price13, select = -c(1:2,7:19))
colnames(Compet_price13) <- c("Part","CP","Betagro","Thaifoods")

Compet_price14 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk14.csv")
Compet_price14 <- Compet_price14[-c(1:4,13,15:132),]
Compet_price14 <- subset(Compet_price14, select = -c(1:2,7:19))
colnames(Compet_price14) <- c("Part","CP","Betagro","Thaifoods")

Compet_price15 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk15.csv")
Compet_price15 <- Compet_price15[-c(1:4,13,15:132),]
Compet_price15 <- subset(Compet_price15, select = -c(1:2,7:19))
colnames(Compet_price15) <- c("Part","CP","Betagro","Thaifoods")

Compet_price16 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk16.csv")
Compet_price16 <- Compet_price16[-c(1:4,13,15:132),]
Compet_price16 <- subset(Compet_price16, select = -c(1:2,7:19))
colnames(Compet_price16) <- c("Part","CP","Betagro","Thaifoods")

Compet_price17 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk17.csv")
Compet_price17 <- Compet_price17[-c(1:4,13,15:132),]
Compet_price17 <- subset(Compet_price17, select = -c(1:2,7:19))
colnames(Compet_price17) <- c("Part","CP","Betagro","Thaifoods")

Compet_price18 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk18.csv")
Compet_price18 <- Compet_price18[-c(1:4,13,15:132),]
Compet_price18 <- subset(Compet_price18, select = -c(1:2,7:19))
colnames(Compet_price18) <- c("Part","CP","Betagro","Thaifoods")

Compet_price19 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk19.csv")
Compet_price19 <- Compet_price19[-c(1:4,13,15:132),]
Compet_price19 <- subset(Compet_price19, select = -c(1:2,7:19))
colnames(Compet_price19) <- c("Part","CP","Betagro","Thaifoods")

Sys.setlocale(locale = "Thai")
Compet_price20 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk20.csv")
Compet_price20 <- Compet_price20[-c(1:4,13,15:133),]
Compet_price20 <- subset(Compet_price20, select = -c(1:2,7:19))
colnames(Compet_price20) <- c("Part","CP","Betagro","Thaifoods")

Compet_price21 <- read.csv("/2022/For estimation/Competitor/Price_Competition_Wk21.csv")
Compet_price21 <- Compet_price21[-c(1:4,13,15:133),]
Compet_price21 <- subset(Compet_price21, select = -c(1:2,7:19))
colnames(Compet_price21) <- c("Part","CP","Betagro","Thaifoods")


compet_shoulder <- Compet_price3 %>% slice(2:2)
compet_shoulder <- rbind(compet_shoulder, (Compet_price4 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price5 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price6 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price7 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price8 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price9 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price10 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price11 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price12 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price13 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price14 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price15 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price16 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price17 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price18 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price19 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price20 %>% slice(2:2)))
compet_shoulder <- rbind(compet_shoulder, (Compet_price21 %>% slice(2:2)))

compet_thigh <- Compet_price3 %>% slice(1:1)
compet_thigh <- rbind(compet_thigh, (Compet_price4 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price5 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price6 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price7 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price8 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price9 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price10 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price11 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price12 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price13 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price14 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price15 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price16 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price17 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price18 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price19 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price20 %>% slice(1:1)))
compet_thigh <- rbind(compet_thigh, (Compet_price21 %>% slice(1:1)))

compet_sirloin <- Compet_price3 %>% slice(3:3)
compet_sirloin <- rbind(compet_sirloin, (Compet_price4 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price5 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price6 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price7 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price8 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price9 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price10 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price11 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price12 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price13 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price14 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price15 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price16 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price17 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price18 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price19 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price20 %>% slice(3:3)))
compet_sirloin <- rbind(compet_sirloin, (Compet_price21 %>% slice(3:3)))


compet_tenderloin <- Compet_price3 %>% slice(4:4)
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price4 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price5 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price6 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price7 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price8 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price9 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price10 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price11 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price12 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price13 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price14 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price15 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price16 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price17 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price18 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price19 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price20 %>% slice(4:4)))
compet_tenderloin <- rbind(compet_tenderloin, (Compet_price21 %>% slice(4:4)))


compet_neck <- Compet_price3 %>% slice(5:5)
compet_neck <- rbind(compet_neck, (Compet_price4 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price5 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price6 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price7 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price8 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price9 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price10 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price11 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price12 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price13 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price14 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price15 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price16 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price17 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price18 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price19 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price20 %>% slice(5:5)))
compet_neck <- rbind(compet_neck, (Compet_price21 %>% slice(5:5)))

compet_belly <- Compet_price3 %>% slice(6:6)
compet_belly <- rbind(compet_belly, (Compet_price4 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price5 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price6 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price7 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price8 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price9 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price10 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price11 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price12 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price13 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price14 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price15 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price16 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price17 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price18 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price19 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price20 %>% slice(6:6)))
compet_belly <- rbind(compet_belly, (Compet_price21 %>% slice(6:6)))

compet_ribs <- Compet_price3 %>% slice(7:7)
compet_ribs <- rbind(compet_ribs, (Compet_price4 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price5 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price6 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price7 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price8 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price9 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price10 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price11 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price12 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price13 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price14 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price15 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price16 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price17 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price18 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price19 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price20 %>% slice(7:7)))
compet_ribs <- rbind(compet_ribs, (Compet_price21 %>% slice(7:7)))


compet_grill_neck <- Compet_price11 %>% slice(8:8)
compet_grill_neck <- rbind(compet_grill_neck, (Compet_price12 %>% slice(8:8)))
compet_grill_neck <- rbind(compet_grill_neck, (Compet_price13 %>% slice(8:8)))
compet_grill_neck <- rbind(compet_grill_neck, (Compet_price14 %>% slice(8:8)))
compet_grill_neck <- rbind(compet_grill_neck, (Compet_price15 %>% slice(8:8)))
compet_grill_neck <- rbind(compet_grill_neck, (Compet_price16 %>% slice(8:8)))
compet_grill_neck <- rbind(compet_grill_neck, (Compet_price17 %>% slice(8:8)))
compet_grill_neck <- rbind(compet_grill_neck, (Compet_price18 %>% slice(8:8)))
compet_grill_neck <- rbind(compet_grill_neck, (Compet_price19 %>% slice(8:8)))
compet_grill_neck <- rbind(compet_grill_neck, (Compet_price20 %>% slice(8:8)))
compet_grill_neck <- rbind(compet_grill_neck, (Compet_price21 %>% slice(8:8)))

week <- c(3:21)
week <- as.numeric(week)
compet_shoulder <- cbind(compet_shoulder,week)
compet_thigh <- cbind(compet_thigh,week)
compet_sirloin <- cbind(compet_sirloin,week)
compet_tenderloin <- cbind(compet_tenderloin,week)
compet_neck <- cbind(compet_neck,week)
compet_belly <- cbind(compet_belly,week)
compet_ribs <- cbind(compet_ribs,week)
week <- c(11:21)
week <- as.numeric(week)
compet_grill_neck <- cbind(compet_grill_neck,week)




common_col_names <- intersect(names(sumshoulder), names(compet_shoulder))
sumshoulder <- merge(sumshoulder,compet_shoulder,by=common_col_names,all.x=TRUE)
#sumshoulder <- sumshoulder%>% drop_na()

common_col_names <- intersect(names(sumthigh), names(compet_thigh))
sumthigh <- merge(sumthigh,compet_thigh,by=common_col_names,all.x=TRUE)
#sumthigh <- sumthigh%>% drop_na()

common_col_names <- intersect(names(sumsirloin), names(compet_sirloin))
sumsirloin <- merge(sumsirloin,compet_sirloin,by=common_col_names,all.x=TRUE)
#sumsirloin <- sumsirloin%>% drop_na()

common_col_names <- intersect(names(sumtenderloin), names(compet_tenderloin))
sumtenderloin <- merge(sumtenderloin,compet_tenderloin,by=common_col_names,all.x=TRUE)
#sumtenderloin <- sumtenderloin%>% drop_na()

common_col_names <- intersect(names(sumneck), names(compet_neck))
sumneck <- merge(sumneck,compet_neck,by=common_col_names,all.x=TRUE)
#sumneck <- sumneck%>% drop_na()

common_col_names <- intersect(names(sumbelly), names(compet_belly))
sumbelly <- merge(sumbelly,compet_belly,by=common_col_names,all.x=TRUE)
#sumbelly <- sumbelly%>% drop_na()

common_col_names <- intersect(names(sumribs), names(compet_ribs))
sumribs <- merge(sumribs,compet_ribs,by=common_col_names,all.x=TRUE)
#sumribs <- sumribs%>% drop_na()

common_col_names <- intersect(names(sumgrilled_neck), names(compet_grill_neck))
sumgrilled_neck <- merge(sumgrilled_neck,compet_grill_neck,by=common_col_names,all.x=TRUE)
#sumgrilled_neck <- sumgrilled_neck %>% drop_na()



sapply(sumshoulder,class)
sumshoulder$Betagro <- as.numeric(sumshoulder$Betagro)
sumshoulder$Thaifoods <- as.numeric(sumshoulder$Thaifoods)
sumshoulder$Order <- as.numeric(gsub(",","", sumshoulder$Order))
sumshoulder$quota <- as.numeric(gsub(",","", sumshoulder$quota))

sapply(sumthigh,class)
sumthigh$Betagro <- as.numeric(sumthigh$Betagro)
sumthigh$Thaifoods <- as.numeric(sumthigh$Thaifoods)
sumthigh$Order <- as.numeric(sub(",","", sumthigh$Order))
sumthigh$quota <- as.numeric(gsub(",","", sumthigh$quota))
#sumthigh$`%SL` <- as.numeric(sub("%", "",sumthigh$`%SL` ,fixed=TRUE))/(100)

sapply(sumsirloin,class)
sumsirloin$Betagro <- as.numeric(sumsirloin$Betagro)
sumsirloin$Thaifoods <- as.numeric(sumsirloin$Thaifoods)
sumsirloin$Order <- as.numeric(sub(",","", sumsirloin$Order))
sumsirloin$quota <- as.numeric(gsub(",","", sumsirloin$quota))
#sumsirloin$`%SL` <- as.numeric(sub("%", "",sumsirloin$`%SL` ,fixed=TRUE))/(100)

sapply(sumtenderloin,class)
sumtenderloin$Betagro <- as.numeric(sumtenderloin$Betagro)
sumtenderloin$Thaifoods <- as.numeric(sumtenderloin$Thaifoods)
sumtenderloin$Order <- as.numeric(sub(",","", sumtenderloin$Order))
sumtenderloin$quota <- as.numeric(gsub(",","", sumtenderloin$quota))
#sumtenderloin$`%SL` <- as.numeric(sub("%", "",sumtenderloin$`%SL` ,fixed=TRUE))/(100)

sapply(sumneck,class)
sumneck$Betagro <- as.numeric(sumneck$Betagro)
sumneck$Thaifoods <- as.numeric(sumneck$Thaifoods)
sumneck$Order <- as.numeric(sub(",","", sumneck$Order))
sumneck$quota <- as.numeric(gsub(",","", sumneck$quota))

sapply(sumbelly,class)
sumbelly$Betagro <- as.numeric(sumbelly$Betagro)
sumbelly$Thaifoods <- as.numeric(sumbelly$Thaifoods)
sumbelly$Order <- as.numeric(sub(",","", sumbelly$Order))
sumbelly$quota <- as.numeric(gsub(",","", sumbelly$quota))

sapply(sumribs,class)
sumribs$Betagro <- as.numeric(sumribs$Betagro)
sumribs$Thaifoods <- as.numeric(sumribs$Thaifoods)
sumribs$Order <- as.numeric(sub(",","", sumribs$Order))
sumribs$quota <- as.numeric(gsub(",","", sumribs$quota))

sapply(sumgrilled_neck,class)
sumgrilled_neck$Betagro <- as.numeric(sumgrilled_neck$Betagro)
sumgrilled_neck$Thaifoods <- as.numeric(sumgrilled_neck$Thaifoods)
sumgrilled_neck$Order <- as.numeric(sub(",","", sumgrilled_neck$Order))
sumgrilled_neck$quota <- as.numeric(gsub(",","", sumgrilled_neck$quota))


sumshoulder$halfpigprice <- as.numeric(sumshoulder$halfpigprice)
sumshoulder <- sumshoulder %>% slice(3:21)
modelshoulder <- lm(sumshoulder$Price_kg ~ sumshoulder$halfpigprice + sumshoulder$quota)
summary(modelshoulder)

sumthigh$halfpigprice <- as.numeric(sumthigh$halfpigprice)
sumthigh <- sumthigh %>% slice(3:21)
modelthigh <- lm(sumthigh$Price_kg ~ sumthigh$halfpigprice +sumthigh$quota)
summary(modelthigh)

sumsirloin$halfpigprice <- as.numeric(sumsirloin$halfpigprice)
sumsirloin <- sumsirloin %>% slice(3:21)
modelsirloin <- lm(sumsirloin$Price_kg ~ sumsirloin$halfpigprice + sumsirloin$quota)
summary(modelsirloin)

sumtenderloin$halfpigprice <- as.numeric(sumtenderloin$halfpigprice)
sumtenderloin <- sumtenderloin %>% slice(3:21)
modeltenderloin <- lm(sumtenderloin$Price_kg ~ sumtenderloin$halfpigprice + sumtenderloin$quota)
summary(modeltenderloin)

sumneck$halfpigprice <- as.numeric(sumneck$halfpigprice)
sumneck <- sumneck %>% slice(3:21)
modelneck <- lm(sumneck$Price_kg ~ sumneck$halfpigprice +sumneck$quota)
summary(modelneck)

sumbelly$halfpigprice <- as.numeric(sumbelly$halfpigprice)
sumbelly <- sumbelly %>% slice(3:21)
modelbelly <- lm(sumbelly$Price_kg ~ sumbelly$halfpigprice +sumbelly$quota + sumbelly$`BKK Remainder`)
summary(modelbelly)

sumribs$halfpigprice <- as.numeric(sumribs$halfpigprice)
sumribs <- sumribs %>% slice(3:21)
modelribs <- lm(sumribs$Price_kg ~ sumribs$halfpigprice +sumribs$quota)
summary(modelribs)

sumgrilled_neck$halfpigprice <- as.numeric(sumgrilled_neck$halfpigprice)
sumgrilled_neck <- sumgrilled_neck %>% slice(3:21)
modelgrilled_neck <- lm(sumgrilled_neck$Price_kg ~ sumgrilled_neck$halfpigprice +sumgrilled_neck$quota + sumgrilled_neck$`Mid Remainder`)
summary(modelgrilled_neck)
  


data.halfpig_alivepig <- data.frame(sumshoulder$halfpigprice,sumshoulder$pig_alive_price_)
cor(data.halfpig_alivepig,method="pearson")

data.competprice <- data.frame(sumshoulder$Betagro,sumshoulder$Thaifoods)
cor(data.competprice,method="pearson")

data.sl <- data.frame(sumribs$halfpigprice,sumribs$Betagro)
cor(data.sl,method="pearson")
plot(data.sl)
data.betagro <- data.frame(sumshoulder$Betagro,sumshoulder$`%SL`)
cor(data.betagro,method="pearson")

data.half_betagro <- data.frame(sumshoulder$Betagro,sumshoulder$halfpigprice)
cor(data.half_betagro,method="pearson")

library(car)
vif(modelshoulder)
vif(modelthigh)
vif(modelsirloin)
vif(modeltenderloin)
vif(modelneck)
vif(modelbelly)
vif(modelribs)

#ggplot(sumgrilled_neck, aes(x=week, y=Price_kg, group=1))+
 # geom_line(color="#E69F00",size=1.2) +
 # geom_point()+
 # labs(title="Grilled Pork Neck Weekly Price",x="week", y = "Price per kg")

       