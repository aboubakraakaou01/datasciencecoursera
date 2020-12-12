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
modelResiduals <- as.data.frame(residuals(model))
ggplot(modelResiduals, aes(residuals(model))) +
  geom_histogram(fill='deepskyblue', color='white')

# prediction
pred <- predict(model,testSet)

#evaluation the model
modEv <-  cbind(testSet$user_id,pred)
colnames(modEv) <- c('actual', 'prediction')
modEv <- as.data.frame(modEv)

#Logistic Regression..................................

print("the data cleaning process")
sapply(df1,function(x) sum(is.na(x)))
sapply(df1,function(x) length(unique(x)))

missmap(df1, main = "missing values vs observed our data")

data <- subset(df1,select=c(7,8,18))

#taking care of the missing values
data$account_lang[is.na(data$account_lang)] <- mean(data$account_lang,na.rm=T)
is.factor(data$user_id)

#model fitting
train <- data[1:200,]
test <- data[201:400,]


model <- glm(user_id ~.,family=binomial(link='logit'),data=train)
summary(model)

#running the model to analyze the table of deviance
anova(model,test="Chisq")

#assessing the predictive 
fitted.results <- predict(model,newdata=subset(test,select=c(7,8,18)),type='response')
fitted.results <- ifelse(fitted.results > 0.5,1,0)
misClasificError <- mean(fitted.results != test$user_id)
print(paste('Accuracy of model',1-misClasificError))


#Random Forest with R.............................................

install.packages("randomForest")
library(randomForest)

df1[ df1 == "?"] <- NA
colSums(is.na(df1))

sample = sample.split(data$user_id, SplitRatio = .80)
train = subset(data, sample == TRUE)
test  = subset(data, sample == FALSE)
dim(train)
dim(test)

#intialize an instance of the randomForest class
rf <- randomForest(user_id ~ ., data=train)

#prediction
pred=predict(rf,newdata=test[18])

cm=table(test (,18),pred)

#K-NN with R.....................................

#normalization numeric data 
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x))) }

df_1 <- as.data.frame(lapply(df1[2:9], normalize))

#creating training and test data set
df_train <- df_1[1:200,]
df_test <- df_1[201:400,]

df_train_labels <- prc[1:200, 1]
df_test_labels <- prc[201:400, 1]
#training a model on data
install.packages("class")
library(class)

df_test_pred <- knn(train=df_train,test=df_test,cl=df_train_labels,k=10)

#evaluate the model performance
 install.packages("gmodels")
 library(gmodels)
 
 CrossTable(x=df_test_labels,y=df_test_pred,prop.chisq=FALSE)
