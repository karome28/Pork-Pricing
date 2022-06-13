sumthigh$CP <- as.numeric(sumthigh$CP)
sumthigh$CP_m <- mean(sumthigh$CP, na.rm = TRUE)
sumthigh$CP_sd <- sd(sumthigh$CP, na.rm =  TRUE)
sumthigh$Mid_Remainder_m <- mean(sumthigh$`Mid Remainder`, na.rm = TRUE)
sumthigh$Mid_Remainder_sd <- sd(sumthigh$`Mid Remainder`, na.rm =  TRUE)
sumthigh$Betagro_m <- mean(sumthigh$Betagro, na.rm = TRUE)
sumthigh$Betagro_sd <- sd(sumthigh$Betagro, na.rm =  TRUE)
sumthigh$quota_m <- mean(sumthigh$quota, na.rm = TRUE)
sumthigh$quota_sd <- sd(sumthigh$quota, na.rm = TRUE)
sumthigh$CP_s <- (sumthigh$CP - sumthigh$CP_m)/sumthigh$CP_sd
sumthigh$Mid_Remainder_s <- (sumthigh$`Mid Remainder` - sumthigh$Mid_Remainder_m)/sumthigh$Mid_Remainder_sd
sumthigh$Betagro_s <- (sumthigh$Betagro - sumthigh$Betagro_m)/sumthigh$Betagro_sd
sumthigh$quota_s <- (sumthigh$quota - sumthigh$quota_m)/sumthigh$quota_sd
modelthigh <- lm(sumthigh$Price_kg ~ sumthigh$CP + sumthigh$`Mid Remainder` + sumthigh$Betagro + sumthigh$quota)
modelthigh_s <- lm(sumthigh$Price_kg ~ sumthigh$CP_s + sumthigh$Mid_Remainder_s +sumthigh$Betagro_s + sumthigh$quota_s)


#thigh_m <- 151.69+(11.95*((127-sumthigh$halfpigprice_m)/sumthigh$halfpigprice_sd)) + (0.99*((2141-sumthigh$Mid_Remainder_m)/sumthigh$Mid_Remainder_sd)) + (-0.164*((115368-sumthigh$quota_m)/sumthigh$quota_sd))
#summary(thigh_m)
summary(modelthigh)
summary(modelthigh_s)
ggplot(modelthigh,aes(sumthigh$halfpigprice_s,sumthigh$Price_kg))+geom_point()
sumthigh$halfpigprice_s
sumthigh$Price_kg
data.half_betagro <- data.frame(sumthigh$halfpigprice_s, sumthigh$Betagro_s)
cor(data.half_betagro,method="pearson")
vif(modelthigh)
plot(modelthigh)

-18.82+(0.9684*127)+(0.4501*170)+(0.001086*2474)+(-0.00001087*62748)
sumshoulder$halfpigprice_m <- mean(sumshoulder$halfpigprice, na.rm = TRUE)
sumshoulder$halfpigprice_sd <- sd(sumshoulder$halfpigprice, na.rm =  TRUE)
sumshoulder$Mid_Remainder_m <- mean(sumshoulder$`Mid Remainder`, na.rm = TRUE)
sumshoulder$Mid_Remainder_sd <- sd(sumshoulder$`Mid Remainder`, na.rm =  TRUE)
sumshoulder$Betagro_m <- mean(sumshoulder$Betagro, na.rm = TRUE)
sumshoulder$Betagro_sd <- sd(sumshoulder$Betagro, na.rm =  TRUE)
sumshoulder$quota_m <- mean(sumshoulder$quota, na.rm = TRUE)
sumshoulder$quota_sd <- sd(sumshoulder$quota, na.rm = TRUE)
sumshoulder$halfpigprice_s <- (sumshoulder$halfpigprice - sumshoulder$halfpigprice_m)/sumshoulder$halfpigprice_sd
sumshoulder$Mid_Remainder_s <- (sumshoulder$`Mid Remainder` - sumshoulder$Mid_Remainder_m)/sumshoulder$Mid_Remainder_sd
sumshoulder$Betagro_s <- (sumshoulder$Betagro - sumshoulder$Betagro_m)/sumshoulder$Betagro_sd
sumshoulder$quota_s <- (sumshoulder$quota - sumshoulder$quota_m)/sumshoulder$quota_sd
modelshoulder <- lm(sumshoulder$Price_kg ~ sumshoulder$halfpigprice_s + sumshoulder$Mid_Remainder_s +sumshoulder$Betagro_s + sumshoulder$quota_s)
summary(modelshoulder)
vif(modelshoulder)

sumsirloin$halfpigprice_m <- mean(sumsirloin$halfpigprice, na.rm = TRUE)
sumsirloin$halfpigprice_sd <- sd(sumsirloin$halfpigprice, na.rm =  TRUE)
sumsirloin$Mid_Remainder_m <- mean(sumsirloin$`Mid Remainder`, na.rm = TRUE)
sumsirloin$Mid_Remainder_sd <- sd(sumsirloin$`Mid Remainder`, na.rm =  TRUE)
sumsirloin$Betagro_m <- mean(sumsirloin$Betagro, na.rm = TRUE)
sumsirloin$Betagro_sd <- sd(sumsirloin$Betagro, na.rm =  TRUE)
sumsirloin$quota_m <- mean(sumsirloin$quota, na.rm = TRUE)
sumsirloin$quota_sd <- sd(sumsirloin$quota, na.rm = TRUE)
sumsirloin$halfpigprice_s <- (sumsirloin$halfpigprice - sumsirloin$halfpigprice_m)/sumsirloin$halfpigprice_sd
sumsirloin$Mid_Remainder_s <- (sumsirloin$`Mid Remainder` - sumsirloin$Mid_Remainder_m)/sumsirloin$Mid_Remainder_sd
sumsirloin$Betagro_s <- (sumsirloin$Betagro - sumsirloin$Betagro_m)/sumsirloin$Betagro_sd
sumsirloin$quota_s <- (sumsirloin$quota - sumsirloin$quota_m)/sumsirloin$quota_sd
modelsirloin <- lm(sumsirloin$Price_kg ~ sumsirloin$halfpigprice_s + sumsirloin$Mid_Remainder_s +sumsirloin$Betagro_s + sumsirloin$quota_s)
summary(modelsirloin)
vif(modelsirloin)

sumtenderloin$halfpigprice_m <- mean(sumtenderloin$halfpigprice, na.rm = TRUE)
sumtenderloin$halfpigprice_sd <- sd(sumtenderloin$halfpigprice, na.rm =  TRUE)
sumtenderloin$Mid_Remainder_m <- mean(sumtenderloin$`Mid Remainder`, na.rm = TRUE)
sumtenderloin$Mid_Remainder_sd <- sd(sumtenderloin$`Mid Remainder`, na.rm =  TRUE)
sumtenderloin$Betagro_m <- mean(sumtenderloin$Betagro, na.rm = TRUE)
sumtenderloin$Betagro_sd <- sd(sumtenderloin$Betagro, na.rm =  TRUE)
sumtenderloin$quota_m <- mean(sumtenderloin$quota, na.rm = TRUE)
sumtenderloin$quota_sd <- sd(sumtenderloin$quota, na.rm = TRUE)
sumtenderloin$halfpigprice_s <- (sumtenderloin$halfpigprice - sumtenderloin$halfpigprice_m)/sumtenderloin$halfpigprice_sd
sumtenderloin$Mid_Remainder_s <- (sumtenderloin$`Mid Remainder` - sumtenderloin$Mid_Remainder_m)/sumtenderloin$Mid_Remainder_sd
sumtenderloin$Betagro_s <- (sumtenderloin$Betagro - sumtenderloin$Betagro_m)/sumtenderloin$Betagro_sd
sumtenderloin$quota_s <- (sumtenderloin$quota - sumtenderloin$quota_m)/sumtenderloin$quota_sd
modeltenderloin <- lm(sumtenderloin$Price_kg ~ sumtenderloin$halfpigprice_s + sumtenderloin$Mid_Remainder_s +sumtenderloin$Betagro_s + sumtenderloin$quota_s)
summary(modeltenderloin)
vif(modeltenderloin)

sumneck$halfpigprice_m <- mean(sumneck$halfpigprice, na.rm = TRUE)
sumneck$halfpigprice_sd <- sd(sumneck$halfpigprice, na.rm =  TRUE)
sumneck$Mid_Remainder_m <- mean(sumneck$`Mid Remainder`, na.rm = TRUE)
sumneck$Mid_Remainder_sd <- sd(sumneck$`Mid Remainder`, na.rm =  TRUE)
sumneck$Betagro_m <- mean(sumneck$Betagro, na.rm = TRUE)
sumneck$Betagro_sd <- sd(sumneck$Betagro, na.rm =  TRUE)
sumneck$quota_m <- mean(sumneck$quota, na.rm = TRUE)
sumneck$quota_sd <- sd(sumneck$quota, na.rm = TRUE)
sumneck$halfpigprice_s <- (sumneck$halfpigprice - sumneck$halfpigprice_m)/sumneck$halfpigprice_sd
sumneck$Mid_Remainder_s <- (sumneck$`Mid Remainder` - sumneck$Mid_Remainder_m)/sumneck$Mid_Remainder_sd
sumneck$Betagro_s <- (sumneck$Betagro - sumneck$Betagro_m)/sumneck$Betagro_sd
sumneck$quota_s <- (sumneck$quota - sumneck$quota_m)/sumneck$quota_sd
modelneck <- lm(sumneck$Price_kg ~ sumneck$halfpigprice_s + sumneck$Mid_Remainder_s +sumneck$Betagro_s + sumneck$quota_s)
summary(modelneck)
vif(modelneck)

sumbelly$halfpigprice_m <- mean(sumbelly$halfpigprice, na.rm = TRUE)
sumbelly$halfpigprice_sd <- sd(sumbelly$halfpigprice, na.rm =  TRUE)
sumbelly$Mid_Remainder_m <- mean(sumbelly$`Mid Remainder`, na.rm = TRUE)
sumbelly$Mid_Remainder_sd <- sd(sumbelly$`Mid Remainder`, na.rm =  TRUE)
sumbelly$Betagro_m <- mean(sumbelly$Betagro, na.rm = TRUE)
sumbelly$Betagro_sd <- sd(sumbelly$Betagro, na.rm =  TRUE)
sumbelly$quota_m <- mean(sumbelly$quota, na.rm = TRUE)
sumbelly$quota_sd <- sd(sumbelly$quota, na.rm = TRUE)
sumbelly$halfpigprice_s <- (sumbelly$halfpigprice - sumbelly$halfpigprice_m)/sumbelly$halfpigprice_sd
sumbelly$Mid_Remainder_s <- (sumbelly$`Mid Remainder` - sumbelly$Mid_Remainder_m)/sumbelly$Mid_Remainder_sd
sumbelly$Betagro_s <- (sumbelly$Betagro - sumbelly$Betagro_m)/sumbelly$Betagro_sd
sumbelly$quota_s <- (sumbelly$quota - sumbelly$quota_m)/sumbelly$quota_sd
modelbelly <- lm(sumbelly$Price_kg ~ sumbelly$halfpigprice_s + sumbelly$Mid_Remainder_s +sumbelly$Betagro_s + sumbelly$quota_s)
summary(modelbelly)
vif(modelbelly)

sumribs$halfpigprice_m <- mean(sumribs$halfpigprice, na.rm = TRUE)
sumribs$halfpigprice_sd <- sd(sumribs$halfpigprice, na.rm =  TRUE)
sumribs$Mid_Remainder_m <- mean(sumribs$`Mid Remainder`, na.rm = TRUE)
sumribs$Mid_Remainder_sd <- sd(sumribs$`Mid Remainder`, na.rm =  TRUE)
sumribs$Betagro_m <- mean(sumribs$Betagro, na.rm = TRUE)
sumribs$Betagro_sd <- sd(sumribs$Betagro, na.rm =  TRUE)
sumribs$quota_m <- mean(sumribs$quota, na.rm = TRUE)
sumribs$quota_sd <- sd(sumribs$quota, na.rm = TRUE)
sumribs$halfpigprice_s <- (sumribs$halfpigprice - sumribs$halfpigprice_m)/sumribs$halfpigprice_sd
sumribs$Mid_Remainder_s <- (sumribs$`Mid Remainder` - sumribs$Mid_Remainder_m)/sumribs$Mid_Remainder_sd
sumribs$Betagro_s <- (sumribs$Betagro - sumribs$Betagro_m)/sumribs$Betagro_sd
sumribs$quota_s <- (sumribs$quota - sumribs$quota_m)/sumribs$quota_sd
modelribs <- lm(sumribs$Price_kg ~ sumribs$halfpigprice_s + sumribs$Mid_Remainder_s +sumribs$Betagro_s + sumribs$quota_s)
summary(modelribs)
vif(modelribs)

sumgrilled_neck$halfpigprice_m <- mean(sumgrilled_neck$halfpigprice, na.rm = TRUE)
sumgrilled_neck$halfpigprice_sd <- sd(sumgrilled_neck$halfpigprice, na.rm =  TRUE)
sumgrilled_neck$Mid_Remainder_m <- mean(sumgrilled_neck$`Mid Remainder`, na.rm = TRUE)
sumgrilled_neck$Mid_Remainder_sd <- sd(sumgrilled_neck$`Mid Remainder`, na.rm =  TRUE)
sumgrilled_neck$Betagro_m <- mean(sumgrilled_neck$Betagro, na.rm = TRUE)
sumgrilled_neck$Betagro_sd <- sd(sumgrilled_neck$Betagro, na.rm =  TRUE)
sumgrilled_neck$quota_m <- mean(sumgrilled_neck$quota, na.rm = TRUE)
sumgrilled_neck$quota_sd <- sd(sumgrilled_neck$quota, na.rm = TRUE)
sumgrilled_neck$halfpigprice_s <- (sumgrilled_neck$halfpigprice - sumgrilled_neck$halfpigprice_m)/sumgrilled_neck$halfpigprice_sd
sumgrilled_neck$Mid_Remainder_s <- (sumgrilled_neck$`Mid Remainder` - sumgrilled_neck$Mid_Remainder_m)/sumgrilled_neck$Mid_Remainder_sd
sumgrilled_neck$Betagro_s <- (sumgrilled_neck$Betagro - sumgrilled_neck$Betagro_m)/sumgrilled_neck$Betagro_sd
sumgrilled_neck$quota_s <- (sumgrilled_neck$quota - sumgrilled_neck$quota_m)/sumgrilled_neck$quota_sd
modelgrilled_neck <- lm(sumgrilled_neck$Price_kg ~ sumgrilled_neck$halfpigprice_s + sumgrilled_neck$Mid_Remainder_s +sumgrilled_neck$Betagro_s + sumgrilled_neck$quota_s)
summary(modelgrilled_neck)
vif(modelgrilled_neck)