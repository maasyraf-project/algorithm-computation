# code reference and data source
# https://medium.com/budding-data-scientist/simple-linear-regression-from-scratch-using-r-software-428fa64b980a

# load data
setwd(getwd())
a = read.csv("data.csv", header=TRUE)
print(summary(a))

# model confirmation
plot(a$Spend, a$Sales, 
     main = "Relationship between Sales and Spend", 
     xlab = "Spend", 
     ylab = "Sales")

# outlier checking
boxplot(a$Sales, 
        main = "Boxplot of Sales", 
        xlab = "Sales")
boxplot(a$Spend, 
        main = "Boxplot of Spend", 
        xlab = "Spend")

# check the distibution 
# install.packages("e1071") #uncomment if the packages is exist

plot(density(a$Sales), 
     main = "Density Plot: Sales", 
     ylab = "Frequency",
     sub = paste("Skewness:", round(e1071 :: skewness(a$Sales),2)))

# corelation analysis
corr = cor(a$Spend, a$Sales)
print(corr)

# model building and analysis
model = lm(a$Spend~a$Sales)
print(model)