modelshoulder <- lm(sumshoulder$Price_kg ~ SL + halfpigprice + )
summary(modelshoulder)
plot(modelshoulder)
ggplot(modelshoulder, aes(sumshoulder$halfpigprice, sumshoulder$Price_kg ,colour = 'red')) + geom_point() + geom_abline()
ggplot(modelshoulder, aes(SL, sumshoulder$Price_kg ,colour = 'red')) + geom_point()+ geom_abline()

confint(model1, conf.level=0.95)

plot(halfpigprice,sumshoulder$Price_kg)
plot(SL, sumshoulder$Price_kg)


data.x1x2 <-data.frame(SL,halfpigprice)
data.x1x2 <-data.frame(SL,pig_alive_price)
data.x1x2 <-data.frame(halfpigprice,pig_alive_price)
print(data.x1x2)
model2 <- cor(data.x1x2,method="pearson")
print(model2)
plot(data.x1x2)
plot(model2)

lines(data.x1x2)

abline(lm(sumshoulder$Price_kg ~ halfpigprice))
abline(lm(sumshoulder$Price_kg ~ SL))

sumshoulder <- sumshoulder %>% slice(1:15)
reg <- lm(sumshoulder$Price_kg ~ SL + pig_alive_price + halfpigprice, data = sumshoulder)
reg 
reg2 <- lm(sumshoulder$Price_kg ~ SL + halfpigprice, data = sumshoulder)
coeff=coefficients(reg)
coeff2=coefficients(reg2)
eq = paste0("y = ", round(coeff[2],1), "*x + ", round(coeff[3],1), "*x + ",round(coeff[4],1),"*x + ", round(coeff[1],1))
eq2= paste0("y = ", round(coeff2[2],1), "*x + ", round(coeff2[3],1), "*x + ", round(coeff[1],1))
install.packages("car")
library(car)
vif(lm(sumshoulder$Price_kg ~ SL + halfpigprice))
vif(lm(sumshoulder$Price_kg ~ SL + pig_alive_price))
vif(lm(sumshoulder$Price_kg ~ halfpigprice + pig_alive_price))
eq
eq2
