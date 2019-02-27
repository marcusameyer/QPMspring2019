
## problem 4a
pnorm(57.75, mean = 50, sd = 6)
## problem 4b
1 - pnorm(50.45, mean = 50, sd = 6)
## problemd 4c
pnorm(59.4, mean = 50, sd = 6) - pnorm(52.4, mean = 50, sd = 6)
##problem 5
set.seed(12345)
salaries <- rnorm(n=10000,mean=40000,sd=15000)
plot(density(salaries), main = "normal salary disttribution", col = "blue")
qnorm(50.45, mean = 50, sd = 6)
##problem 6
a <- rnorm(1000, mean = 0, sd = sqrt(.4))
b <- rnorm(1000, mean = 0, sd = sqrt(3))
c <- rnorm(1000, mean = 3, sd = sqrt(3))
d <- rnorm(1000, mean = 3, sd = sqrt(.4))
e <- rnorm(1000, mean = -2, sd = sqrt(5))
f <- rnorm(1000, mean = -2, sd = sqrt(.25))
plot(density(a, adjust = 10),  col = "blue", ylab = "y axis", xlab = "x axis")
lines(density(b, adjust = 10), col = "red")
lines(density(c, adjust = 10), col = "green")
lines(density(d, adjust = 10), col = "yellow")
lines(density(e, adjust = 10), col = "purple")
lines(density(f, adjust = 10), col = "brown")
legend("topright", legend = c("a", "b", "c", "d", "e", "f"), col = c("blue", "red", "green", "yellow", "purple", "brown"), lty = 1)
##problem 7
##a
hist(drugCoverage$drugsmedia)
##b
boxplot(drugCoverage$drugsmedia)
boxplot(drugCoverage$approval)
##c
plot(drugCoverage$drugsmedia, drugCoverage$unemploy)
plot(drugCoverage$drugsmedia, drugCoverage$approval)
##d
plot(x = drugCoverage$Year, y = drugCoverage$drugsmedia, type = "l")
lines(drugCoverage$drugsmedia, col = "black")
plot(x = drugCoverage$Year, y = drugCoverage$approval, type = "l")
##problem 8
##a
democrat <- subset(wnominatehouse, wnominatehouse$party=="100")
dem88 <- subset(democrat, democrat$congress=="88")
dem107 <- subset(democrat, democrat$congress=="107")
republican <- subset(wnominatehouse, wnominatehouse$party=="200")
rep88 <- subset(republican, republican$congress=="88")
rep107 <- subset(republican,republican$congress=="107")
##b
median(dem88$wnominate)
median(dem107$wnominate)
##c
median(rep88$wnominate)
median(rep107$wnominate)
##d
sd(dem88$wnominate)
sd(dem107$wnominate)
##e
sd(rep88$wnominate)
sd(rep107$wnominate)
##f
hist(dem88$wnominate, col = "blue", xlim = c(-1,1))
hist(rep88$wnominate, col = "red", add=T)
box()
##g
hist(dem107$wnominate, col = "blue", xlim = c(-1,1))
hist(rep107$wnominate, col = "red", add=T)
box()
