#first creating vectors for the age of both men and women
men <- c(56, 60, 50, 26, 45, 35, 41, 43, 34, 42, 37, 39, 33, 28, 52, 48, 27, 20, 44, 32)
women <- c(47, 49, 20, 46, 43, 44, 45, 60, 57, 28, 55, 27, 25, 50, 52, 48, 23, 42, 33, 59)
#boxplots for both men and women
boxplot(men, main="men")
boxplot(women, main="women")
