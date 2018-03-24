#' ---
#' title: "140.644 - Statistical Machine Learning"
#' subtitle: "Final Project"
#' author: "Martin Skarzynski"
#' institute: Johns Hopkins School of Public Health
#' date: March 18, 2018
#' ---

#' ## Goal
#' In this project, I was asked to analyse NHANES 2003-2004 data to predict the age and the 9-year survival status for all NHANES participants.

#' ## Background.
#' The National Health and Nutrition Examination Survey (NHANES) is a cross-sectional, nationally representative survey that assesses demographic, dietary and health-related questions and can be used to better understand differences in health and nutrition across the life-span. Almost all survey data are made publically available by the National Center for Health Statistics (NCHS).

#' ## Dataset
#' The dataset for this project includes a pre-compliled set of 813 variables that you can use in your analysis. The dataset includes the following domains:
```
             c(# Demographics
             "DEMO",# Demographic Variables & Sample Weights
             # Dietary
             "DR1TOT", # Dietary Interview - Total Nutrient Intakes, First Day
             "DR2TOT", # Dietary Interview - Total Nutrient Intakes, Second Day
             # Examination
             "BAX", # Balance
             "BPX", # Blood Pressure
             "BMX", # Body Measures
             "CVX", # Cardiovascular Fitness
             "VIX", # Vision
             # Laboratory
             "L13AM",# Cholesterol - LDL & Triglycerides
             "L13", # Cholesterol - Total & HDL
             "L25", # Complete Blood Count with 5-part Differential - Whole Blood
             "L11PSA", # Prostate Specific Antigen (PSA)
             # Questionnaire
             "ALQ", # Alcohol Use
             "BPQ", # Blood Pressure & Cholesterol
             "DIQ", # Diabetes
             "HSQ", # Current Health Status
             "MCQ", # Medical Conditions
             "SSQ", # Social Support
             "WHQ") # Weight History
```
#'
#' In addition, the dataset includes a 9-year follow-up mortality status obtained from NCHS linked mortality database.

#' Quick introduction to a few variables:

#' - SEQN: Respondent sequence number.
#' - RIDAGEEX: Age in months at time of examination
#' - RIAGENDR: Gender: 1 = male, 2 = female
#' - BMXWT: Weight in kg
#' - BMXHT: Standing Height in cm
#' - BMXBMI: Body mass index (kg/m **2)
#' - mortstat: “final mortality status”; (0 - “Assumed alive”, 1 -“Assumed Deceased”, /* - “Ineligible for mortality follow-up or under age 18”)
#' The full description of the variables is available at the NHANES 2003-2004 website. For example, DEMO and MCQ components are described at DEMO and MCQ, respectively.

#'

#' # Part 1: A prediction model for the age in months at time of examination, RIDAGEEX
load("nhanes2003-2004.Rda")

#Explore the dataset
dim(nhanes2003_2004)
#head(nhanes2003_2004)
#names(nhanes2003_2004)
#library(purrr, help)
#map(nhanes2003_2004, class)
library(dplyr, help)
#glimpse(nhanes2003_2004)

#Remove all rows with NAs in the outcome variable column
condition <- !is.na(nhanes2003_2004$RIDAGEEX)
length(condition)
nhanes2003_2004 <- nhanes2003_2004[condition,]
#Next, remove all variables with NAs
nhanes2003_2004 <- nhanes2003_2004[,colMeans(is.na(nhanes2003_2004))<=0.00]
# nhanes2003_2004 <- nhanes2003_2004[rowMeans(is.na(nhanes2003_2004))<=0.00,]

#Double check that removeing NAs worked
sum(!is.na(nhanes2003_2004))
sum(is.na(nhanes2003_2004))
dim(nhanes2003_2004)
#glimpse(nhanes2003_2004)

# Remove factors with fewer than two levels
#str(nhanes2003_2004)
n_lev <- sapply(nhanes2003_2004, nlevels)
#head(n_lev)
nhanes2003_2004 <- nhanes2003_2004[ , n_lev>=2]

which(names(nhanes2003_2004)=="RIDAGEEX")
#names(nhanes2003_2004)

#Turn all variables to numeric for now
nhanes2003_2004 <- sapply( nhanes2003_2004, as.numeric )
nhanes2003_2004 <- as.data.frame( nhanes2003_2004 )

"RIDAGEEX" %in% names(nhanes2003_2004)

## nhanes2003_2004$RIDAGEEX <- as.numeric(nhanes2003_2004$RIDAGEEX)

set.seed(20180318)

nhanes <-
  nhanes2003_2004 %>%
  rowwise() %>%
  mutate(splt = sample(
    c("train", "test"),
    1,
    replace = TRUE,
    prob = c(0.75, 0.25) # Set weights for each group here
  ))
#head(nhanes)

train <- nhanes %>%
    filter(splt == "train") %>%
    select(-SEQN, -splt)

test <- nhanes %>%
    filter(splt == "test") %>%
    select(-SEQN, -splt)

index_train <- which(nhanes$splt=="train")
index_test <- which(nhanes$splt=="test")
dim(nhanes[index_train,-c(1,24)])
all(nhanes[index_train,-c(1,24)]==train)

dim(train)
#names(nhanes)

lin <- lm(formula = RIDAGEEX ~ .,
          data = train,
          na.action = na.omit) #NAs were already removed

#' When $\lambda$ is zero, we should obtain the same results with linear, ridge and lasso regression.

library(glmnet, help)

#convert response variable to vector
y_train <- train$RIDAGEEX
mod_mat <- model.matrix(object = RIDAGEEX ~ ., data = train)
#mod_mat %>% head

rid_cv <- cv.glmnet(mod_mat, y_train, alpha = 0)
rid_lam <- rid_cv$lambda.min
rid_mod <- glmnet(x = mod_mat,
                  y = y_train,
                  alpha = 0,
                  lambda = rid_lam)

las_cv <- cv.glmnet(mod_mat, y_train, alpha = 1)
las_lam <- las_cv$lambda.min
las_mod <- glmnet(x = mod_mat,
                  y = y_train,
                  alpha = 1,
                  lambda = las_lam)

#make predictions
pred_lm <- predict(object = lin, newdata = test)
mean((pred_lm - test$RIDAGEEX)^2)

test_mat <- model.matrix(RIDAGEEX ~ ., data = test)

rid_pred <- predict(rid_mod, s = rid_lam, newx = test_mat)
mean((rid_pred - test$RIDAGEEX)^2)

las_pred <- predict(las_mod, s = las_lam, newx = test_mat)
mean((las_pred - test$RIDAGEEX)^2)

coef(lin)
predict(rid_mod, s = rid_lam, exact = T, type = 'coefficients')
predict(las_mod, s = las_lam, exact = T, type = 'coefficients')

#' The MSEs I obtained are really low, unfortunately, looking at the coefficients it appears that a few of the variables are driving the models. Upon further inspection, `RIDAGEMN` and `RIDAGEYR` is the age in months and years, respectively. I will rerun the models after removing these variables.


train2 <- train %>%
    select(-RIDAGEMN, -RIDAGEYR, -RIDSTATR)

test2 <- test %>%
    select(-RIDAGEMN, -RIDAGEYR, -RIDSTATR)

lin2 <- lm(formula = RIDAGEEX ~ .,
          data = train2,
          na.action = na.omit) #NAs were already removed

#convert response variable to vector
y_train2 <- train2$RIDAGEEX
mod_mat2 <- model.matrix(object = RIDAGEEX ~ ., data = train2)
#mod_mat2 %>% head

rid_cv2 <- cv.glmnet(mod_mat2, y_train2, alpha = 0)
rid_lam2 <- rid_cv2$lambda.min
rid_mod2 <- glmnet(x = mod_mat2,
                  y = y_train2,
                  alpha = 0,
                  lambda = rid_lam2)

las_cv2 <- cv.glmnet(mod_mat2, y_train2, alpha = 1)
las_lam2 <- las_cv2$lambda.min
las_mod2 <- glmnet(x = mod_mat2,
                  y = y_train2,
                  alpha = 1,
                  lambda = las_lam2)

#make predictions
pred_lm2 <- predict(object = lin2, newdata = test2)
mean((pred_lm2 - test2$RIDAGEEX)^2)

test_mat2 <- model.matrix(RIDAGEEX ~ ., data = test2)

rid_pred2 <- predict(rid_mod2, s = rid_lam2, newx = test_mat2)
mean((rid_pred2 - test2$RIDAGEEX)^2)

las_pred2 <- predict(las_mod2, s = las_lam2, newx = test_mat2)
mean((las_pred2 - test2$RIDAGEEX)^2)

coef(lin2)
predict(rid_mod2, s = rid_lam2, exact = T, type = 'coefficients')
predict(las_mod2, s = las_lam2, exact = T, type = 'coefficients')

library(randomForest)
rf_mod <- randomForest(RIDAGEEX ~ ., data = train, mtry = ncol(train)-2, ntree = 500)
dim(train)
rf_pred <- predict(rf_mod, newdata = test)
length(rf_pred)
length(test$RIDAGEEX)
mean((rf_pred - test$RIDAGEEX)^2)

rf_mod2 <- randomForest(RIDAGEEX ~ ., data = train2, mtry = ncol(train2)-2, ntree = 500)
dim(train)
rf_pred2 <- predict(rf_mod2, newdata = test2)
length(rf_pred2)
length(test2$RIDAGEEX)
mean((rf_pred2 - test2$RIDAGEEX)^2)

plot(rf_mod2)

#boosting
library(gbm)
lambdas <- 10^seq(-10, -0.2, by = 0.1)
train_err <- rep(NA, length(lambdas))
for (i in 1:length(lambdas)) {
    boost <- gbm(RIDAGEEX ~ .,
                         data = train2,
                         distribution = "gaussian",
                         n.trees = 500,
                         shrinkage = lambdas[i])
    pred_train <- predict(boost, train2, n.trees = 500)
    train_err[i] <- mean((pred_train - train$RIDAGEEX)^2)
}
plot(lambdas,
     train_err,
     type = "b",
     xlab = "Lambda shrinkage values",
     ylab = "Training Set MSE")

#' Now I will produce a plot with different shrinkage values on the $x$-axis and the corresponding test set MSE on the $y$-axis.

test_err <- rep(NA, length(lambdas))
for (i in 1:length(lambdas)) {
    boost <- gbm(RIDAGEEX ~ .,
                         data = train2,
                         distribution = "gaussian",
                         n.trees = 500,
                         shrinkage = lambdas[i])
    pred_test <- predict(boost, test2, n.trees = 500)
    test_err[i] <- mean((pred_test - test2$RIDAGEEX)^2)
}
plot(lambdas,
     test_err,
     type = "b",
     xlab = "Lambda shrinkage values",
     ylab = "Test Set MSE")
which.min(test_err)
abline(h = which.min(test_err), lty = 2, col = "red")
lambdas[which.min(test_err)]

#' The minimum test MSE for boosting was is `r round(which.min(test_err), 3)`, which was obtained with $\lambda$ of `r round(lambdas[which.min(test_err)], 3)`.


#' The best test MSE was (`r mean((rf_pred2 - test2$RIDAGEEX)^2)`), which was obtained by the random forest method.

library(gbm)
boost <- gbm(RIDAGEEX ~ .,
                     data = train2,
                     distribution = "gaussian",
                     n.trees = 1000,
                     shrinkage = lambdas[which.min(test_err)])
summary(boost)

#' From the results above, it appears that `r summary(boost)[1,1]` and `r summary(boost)[2,1]` are the most important and second most important variables, respectively, for predicting age using the boosting method.

#'

#' # Part 2: For participants 50 years and older, build a prediction model for the final mortality status, mortstat

load("nhanes2003-2004.Rda")
#head(nhanes2003_2004)
#Turn all variables to numeric
nhanes2003_2004 <- sapply( nhanes2003_2004, as.numeric )
nhanes2003_2004 <- as.data.frame( nhanes2003_2004 )
#Remove all rows with NAs in the outcome variable column
nhanes <- nhanes2003_2004 %>%
    filter(RIDAGEYR > 50) %>%
    filter(!is.na(mortstat))

#Next, remove all variables with NAs
nhanes <- nhanes[,colMeans(is.na(nhanes))<=0.00]
# nhanes2003_2004 <- nhanes2003_2004[rowMeans(is.na(nhanes2003_2004))<=0.00,]

#Double check that removeing NAs worked
sum(!is.na(nhanes))
sum(is.na(nhanes))
dim(nhanes)
#glimpse(nhanes)

# Remove factors with fewer than two levels
#str(nhanes)
unique(nhanes$SDDSRVYR)
unique(nhanes$mortstat)

"mortstat" %in% names(nhanes)

nhanes2003_2004$RIDAGEEX <- as.numeric(nhanes2003_2004$RIDAGEEX)

set.seed(20180318)

nhanes <-
  nhanes %>%
  rowwise() %>%
  mutate(splt = sample(
    c("train", "test"),
    1,
    replace = TRUE,
    prob = c(0.75, 0.25) # Set weights for each group here
  ))
#head(nhanes)

train <- nhanes %>%
    filter(splt == "train")#%>%
#    select(-SEQN, -splt, -SDDSRVYR)

test <- nhanes %>%
    filter(splt == "test")#%>%
#    select(-SEQN, -splt, -SDDSRVYR)
train <- train[,-c(1,3,ncol(train))]
test <- test[,-c(1,3,ncol(test))]

index_train <- which(nhanes$splt=="train")
index_test <- which(nhanes$splt=="test")

logis <- glm(formula = mortstat ~ .,
             family = binomial,
             data = train,
             na.action = na.omit) #NAs were already removed

#' When $\lambda$ is zero, we should obtain the same results with linear, ridge and lasso regression.

library(glmnet, help)

#convert response variable to vector
y_train <- train$mortstat
mod_mat <- model.matrix(object = mortstat ~ ., data = train)
#mod_mat %>% head

rid_cv <- cv.glmnet(mod_mat, y_train, alpha = 0)
rid_lam <- rid_cv$lambda.min
rid_mod <- glmnet(x = mod_mat,
                  y = y_train,
                  family = "binomial",
                  alpha = 0,
                  lambda = rid_lam)

las_cv <- cv.glmnet(mod_mat, y_train, alpha = 1)
las_lam <- las_cv$lambda.min
las_mod <- glmnet(x = mod_mat,
                  y = y_train,
                  family = "binomial",
                  alpha = 1,
                  lambda = las_lam)

#make predictions
y_test <- test$mortstat
prob_logis <- predict(object = logis, newdata = test, type = "response")
pred_logis <- rep(0,length(y_test))
pred_logis[prob_logis>.5]=1
table(pred_logis,y_test)
#prediction accuracy
mean(pred_logis==y_test)*100
#missclassification rate
(1-mean(pred_logis==y_test))*100

test_mat <- model.matrix(mortstat ~ ., data = test)

rid_prob <- predict(rid_mod, s = rid_lam, newx = test_mat, type = "response")
rid_pred <- rep(0, length(y_test))
rid_pred[rid_prob>.5]=1
table(rid_pred,y_test)
#prediction accuracy
mean(rid_pred==y_test)*100
#missclassification rate
(1-mean(rid_pred==y_test))*100

las_prob <- predict(las_mod, s = las_lam, newx = test_mat, type = "response")
las_pred <- rep(0, length(y_test))
las_pred[las_prob>.5]=1
table(las_pred,y_test)
#prediction accuracy
mean(las_pred==y_test)*100
#missclassification rate
(1-mean(las_pred==y_test))*100

exp(coef(logis))
exp(predict(rid_mod, s = rid_lam, exact = T, type = 'coefficients'))
exp(predict(las_mod, s = las_lam, exact = T, type = 'coefficients'))
#head(train)

#' The prediction accuracies for the classification problem using logistic (`r (1-mean(pred_logis==y_test))*100`), ridge (`r mean(rid_pred==y_test)*100`) and lasso (`r mean(las_pred==y_test)*100`) regression were rather similar.
