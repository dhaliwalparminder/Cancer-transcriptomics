
 # heart failure clinical record analytics
 # pures college

 #uploaded heart failure cinical record data set

 data =read.csv("Heart Failure Clinical Records.csv")
 View("data")
 #regression analysis
 
 model_A = lm(high_blood_pressure ~ age,
              data = data)
View(model_A)
summary(model_A)

model_B = lm(high_blood_pressure ~ age + diabetes,
             data = data)
View(model_B)
summary(model_B)
coefficients(model_B)
fitted(model_B)
residuals(model_B)
plot(model_B)
