library(tidyverse)
library(car)
sumthigh$Mid_Remainder_m <- mean(sumthigh$`Mid Remainder`, na.rm = TRUE)
sumthigh$Mid_Remainder_sd <- sd(sumthigh$`Mid Remainder`, na.rm =  TRUE)
sumthigh$Betagro_m <- mean(sumthigh$Betagro, na.rm = TRUE)
sumthigh$Betagro_sd <- sd(sumthigh$Betagro, na.rm =  TRUE)
sumthigh$quota_m <- mean(sumthigh$quota, na.rm = TRUE)
sumthigh$quota_sd <- sd(sumthigh$quota, na.rm = TRUE)
sumthigh$Mid_Remainder_s <- (sumthigh$`Mid Remainder` - sumthigh$Mid_Remainder_m)/sumthigh$Mid_Remainder_sd
sumthigh$Betagro_s <- (sumthigh$Betagro - sumthigh$Betagro_m)/sumthigh$Betagro_sd
sumthigh$quota_s <- (sumthigh$quota - sumthigh$quota_m)/sumthigh$quota_sd
modelthigh <- lm(sumthigh$Price_kg ~ sumthigh$halfpigprice + sumthigh$`Mid Remainder` + sumthigh$Betagro + sumthigh$quota)
modelthigh_s <- lm(sumthigh$CP ~ sumthigh$halfpigprice_s + sumthigh$Mid_Remainder_s +sumthigh$Betagro_s + sumthigh$quota_s)
summary(modelthigh_s)

thigh_m <- 150.11+(11.37*((127-sumthigh$halfpigprice_m)/sumthigh$halfpigprice_sd)) + (0.99*((7700-sumthigh$Mid_Remainder_m)/sumthigh$Mid_Remainder_sd)) + (-0.166*((141791-sumthigh$quota_m)/sumthigh$quota_sd))
thigh_m_cp <- 151+(9.9122*((127-sumthigh$halfpigprice_m)/sumthigh$halfpigprice_sd)) + (0.8688*((2141-sumthigh$Mid_Remainder_m)/sumthigh$Mid_Remainder_sd)) + (0.3696*((141791-sumthigh$quota_m)/sumthigh$quota_sd))
  
summary(thigh_m_cp)
vif(modelthigh_s)
ggplot(modelthigh,aes(sumthigh$halfpigprice_s,sumthigh$Price_kg))+geom_point()
sumthigh$halfpigprice_s
sumthigh$Price_kg
data.half_betagro <- data.frame(sumthigh$halfpigprice_s, sumthigh$Betagro_s)
cor(data.half_betagro,method="pearson")
vif(modelthigh_s)
plot(modelthigh)

summary(modelshoulder)


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
modelshoulder_s <- lm(sumshoulder$CP ~ sumshoulder$halfpigprice_s + sumshoulder$Mid_Remainder_s + sumshoulder$Betagro_s +sumshoulder$quota_s)
summary(modelshoulder_s)
shoulder_m <- 147+(14.89*((127-sumshoulder$halfpigprice_m)/sumshoulder$halfpigprice_sd)) + (1.44*((2474-sumshoulder$Mid_Remainder_m)/sumshoulder$Mid_Remainder_sd)) + (0.28*((69300-sumshoulder$quota_m)/sumshoulder$quota_sd)) + (3.95*((164-sumshoulder$Betagro_m)/sumshoulder$Betagro_sd))
summary(shoulder_m)
summary(modelshoulder)
vif(modelshoulder_s)

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
modelsirloin_s <- lm(sumsirloin$Price_kg ~ sumsirloin$halfpigprice_s + sumsirloin$Mid_Remainder_s +sumsirloin$Betagro_s + sumsirloin$quota_s)
summary(modelsirloin_s)
vif(modelsirloin_s)
sirloin_m <- 154.47+(10.99*((127-sumsirloin$halfpigprice_m)/sumsirloin$halfpigprice_sd)) + (0.87*((2374-sumsirloin$Mid_Remainder_m)/sumsirloin$Mid_Remainder_sd)) + (-1.38*((56024-sumsirloin$quota_m)/sumsirloin$quota_sd)) + (10.38*((170-sumsirloin$Betagro_m)/sumsirloin$Betagro_sd))
summary(sirloin_m)


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
modeltenderloin_s <- lm(sumtenderloin$Price_kg ~ sumtenderloin$halfpigprice_s + sumtenderloin$Mid_Remainder_s +sumtenderloin$Betagro_s + sumtenderloin$quota_s)
summary(modeltenderloin_s)
vif(modeltenderloin_s)
tenderloin_m <- 161.985+(16.62*((127-sumtenderloin$halfpigprice_m)/sumtenderloin$halfpigprice_sd)) + (4.2*((793-sumtenderloin$Mid_Remainder_m)/sumtenderloin$Mid_Remainder_sd)) + (-7.9*((9251-sumtenderloin$quota_m)/sumtenderloin$quota_sd)) 
summary(tenderloin_s)

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
modelneck_s <- lm(sumneck$Price_kg ~ sumneck$halfpigprice_s + sumneck$Mid_Remainder_s +sumneck$Betagro_s + sumneck$quota_s)
summary(modelneck_s)
vif(modelneck_s)
neck_m <- 228.84+(5.92*((127-sumneck$halfpigprice_m)/sumneck$halfpigprice_sd)) + (-3.65*((3571-sumneck$Mid_Remainder_m)/sumneck$Mid_Remainder_sd)) + (0.48*((39908-sumneck$quota_m)/sumneck$quota_sd)) + (-4.23*((233-sumneck$Betagro_m)/sumneck$Betagro_sd))
summary(neck_m)

belly_m <- 180.28 + (8.11*((127-sumbelly$halfpigprice_m)/sumbelly$halfpigprice_sd)) + (0.06*((5295-sumbelly$Mid_Remainder_m)/sumbelly$Mid_Remainder_sd)) + (-2.29*((88442-sumbelly$quota_m)/sumbelly$quota_sd))

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
modelbelly_s <- lm(sumbelly$Price_kg ~ sumbelly$halfpigprice_s + sumbelly$Mid_Remainder_s +sumbelly$Betagro_s + sumbelly$quota_s)
summary(modelbelly_s)
vif(modelbelly_s)
coef(modelbelly)
belly_m <- 180.28 + (8.11*((127-sumbelly$halfpigprice_m)/sumbelly$halfpigprice_sd)) + (0.06*((5295-sumbelly$Mid_Remainder_m)/sumbelly$Mid_Remainder_sd)) + (-2.29*((88442-sumbelly$quota_m)/sumbelly$quota_sd))
summary(belly_m)


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
modelribs_s <- lm(sumribs$Price_kg ~ sumribs$halfpigprice_s + sumribs$Mid_Remainder_s +sumribs$Betagro_s + sumribs$quota_s)
summary(modelribs_s)
vif(modelribs_s)
ribs_m <- 146.42 + (13.56*((127-sumribs$halfpigprice_m)/sumribs$halfpigprice_sd)) + (2.413*((1021-sumribs$Mid_Remainder_m)/sumribs$Mid_Remainder_sd)) + (-1.44*((39908-sumribs$quota_m)/sumribs$quota_sd)) + (5.954*((151-sumribs$Betagro_m)/sumribs$Betagro_sd))
summary(ribs_m)

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
modelgrilled_neck_s <- lm(sumgrilled_neck$Price_kg ~ sumgrilled_neck$halfpigprice_s + sumgrilled_neck$Mid_Remainder_s +sumgrilled_neck$Betagro_s + sumgrilled_neck$quota_s)
summary(modelgrilled_neck_s)
vif(modelgrilled_neck_s)
grilled_neck_m <- 255.18 + (18.12*((127-sumgrilled_neck$halfpigprice_m)/sumgrilled_neck$halfpigprice_sd)) + (-0.52*((351-sumgrilled_neck$Mid_Remainder_m)/sumgrilled_neck$Mid_Remainder_sd)) + (-4.74*((11196-sumgrilled_neck$quota_m)/sumgrilled_neck$quota_sd)) + (-2.8*((282-sumgrilled_neck$Betagro_m)/sumgrilled_neck$Betagro_sd))
summary(grilled_neck_m)


modelthigh <- lm(sumthigh$Price_kg ~ sumthigh$halfpigprice + sumthigh$`Mid Remainder`+sumthigh$quota)
summary(modelthigh)
vif(modelthigh)
-18.82+(0.9684*127)+(0.001086*2141)+(-0.00001087*115417)+(0.45*167)
-8.024+(1.45*127)+(0.002077*2141)+(-0.000004487*115417)
modelshoulder <- lm(sumshoulder$Price_kg ~ sumshoulder$halfpigprice + sumshoulder$`Mid Remainder`+sumshoulder$quota)
summary(modelshoulder)
vif(modelshoulder)
-25.67+(1.2*127)+(0.001684*2474)+(0.00002917*69300)+(0.2683*164)
-17.82+(1.479*127)+(0.002205*2474)+(0.00001699*69300)
modelsirloin <- lm(sumsirloin$Price_kg ~ sumsirloin$halfpigprice + sumsirloin$`Mid Remainder`+sumsirloin$quota+sumsirloin$Betagro)
summary(modelsirloin)
vif(modelsirloin)
-44.82+(0.8915*127)+(0.001713*2374)+(0.00009483*63544)+(0.7043*171)
-14.78+(1.649*127)+(0.001393*2374)+(0.0001844*63544)
modeltenderloin <- lm(sumtenderloin$Price_kg ~ sumtenderloin$halfpigprice + sumtenderloin$`Mid Remainder`+sumtenderloin$quota)
summary(modeltenderloin)
vif(modeltenderloin)
82.09+(1.35*127)+(0.018*793)+(-0.0044*9251)+(-0.256*176)
73.82+(1.07*127)+(0.019*793)+(-0.0045*9251)
modelneck <- lm(sumneck$Price_kg ~ sumneck$halfpigprice + sumneck$`Mid Remainder`+sumneck$quota)
summary(modelneck)
vif(modelneck)
223.2+(0.48*127)+(-0.003962*3571)+(0.00005125*38992)+(-0.2030*233)
202.7+(0.3458*127)+(-0.005281*3571)+(-0.00003745*38992)

modelbelly <- lm(sumbelly$Price_kg ~ sumbelly$halfpigprice + sumbelly$`Mid Remainder`+sumbelly$quota)
summary(modelbelly)
vif(modelbelly)
-62.38+(0.6577*127)+(0.00005162*5295)+(-0.0001033*88442)+(1.023*193)
22.79+(1.605*127)+(0.00002061*5295)+(-0.0001931*88442)

modelribs <- lm(sumribs$Price_kg ~ sumribs$halfpigprice + sumribs$`Mid Remainder`+sumribs$quota)
summary(modelribs)
vif(modelribs)
-47.82+(1.1*127)+(0.004232*1021)+(-0.0001535*38992)+(0.556*151)
-7+(1.52*127)+(0.0048*1021)+(-0.00048*38992)
modelgrilled_neck <- lm(sumgrilled_neck$Price_kg ~ sumgrilled_neck$halfpigprice + sumgrilled_neck$`Mid Remainder`+sumgrilled_neck$quota)
summary(modelgrilled_neck)
vif(modelgrilled_neck)
291.09+(1.81*127)+(0.0011*351)+(-0.004*11196)+(-0.684*282)
119.3+(1.589*127)+(-0.0005051*351)+(-0.003212*11196)
