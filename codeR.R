
#hello datasciencecoursera

#library files

library(tidyverse)
library(dplyr)
library(ggplot2)
library(caTools)
install.packages("caTools")
library(coTools)
install.packages("bitops")
library(corrgram)
install.packages("corrgram")
library(corrgram)
install.packages("RcppArmadillo")
library(RcppArmadillo)
install.packages("Amelia")
library(Amelia)
#import file of data covid-19

df1 <- read.csv("C:/Users/aakao/Anaconda3/2020-04-16 Coronavirus Tweets.csv")
df1

#head of file
head(df1)
# the EDA
any(is.na(df1))

#Linear Regression................................

#first graph
p <- ggplot(data=df1, aes(x=user_id,y=friends_count))
p+geom_point(aes(color=Species,size=10, alpha=0.7))

#model training and evaluation: before we do anything let's set a random sedd

set.seed(20)

samplesplit <- sample.split(Y=df1$friends_count,SplitRatio=0.7)
trainSet <- subset(x=df1, sampleSplit==TRUE)
testSet <- subset(x=df1, sampleSplit==FALSE)

model <- lm(formula=user_id ~ ., data=trainSet)

#summary the model
summary(model)

#make a residuals plot
mresiduals <- as.data.frame(residuals(model))
ggplot(modelResiduals, aes(residuals(model))) +
  geom_histogram(fill='deepskyblue', color='white')

# prediction
pred <- predict(model,testSet)

#evaluation the model
modEv <-  cbind(testSet$user_id,pred)
colnames(modelEv) <- c('actual', 'prediction')
modEv <- as.data.frame(modEv)

#Logistic Regression..................................

print("the data cleaning process")
sapply(df1,function(x) sum(is.na(x)))
sapply(df1,function(x) length(unique(x)))

missmap(df1, main = "missing values vs observed our data")

data <- subset(df1,select=c(1,2,5,6,7,8,15))
data
#taking care of the missing values

data$acount_lang[is.na(data$account_lang)] <- mean(data$account_lang,na.rm=T)

is.factor(data$account_lang)

#model fitting
train <- data[1:200,]
test <- data[201:600,]

model <- glm(user_id ~., family=binomial(link="logit",data=train))

summary(model)

#analyze the table of deviance
anova(model,test="chisq")
#predictive ability of the model
fitted.results <- predict(model,newdata=subset(test,select=c(2,3,4)),type='response')
fitted.results <- ifelse(fitted.results > 0.5,1,0)
misClasificError <- mean(fitted.results != test$user_id)
print(paste('Accuracy',1-misClasificError))

#Random Forest with R..................................
       
 
