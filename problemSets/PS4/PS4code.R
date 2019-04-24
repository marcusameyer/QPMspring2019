##problem set 4
##1a
x <- matrix(c(14,6,7,7,7,1),ncol = 3, nrow = 2, byrow = TRUE)
rownames(x) <- c("upper", "lower")
colnames(x) <- c("NS", "B", "W")
x <- Table1
chisq.test(Table1, correct = FALSE)
##2
2*pnorm(.107,lower.tail = F)
2*pnorm(.0769,lower.tail = F)
##3
reserved <- subset(women.csv, women.csv$reserved=="1")
plot(reserved$GP, reserved$water)
corline <- lm(reserved$GP ~ reserved$water)
abline(corline, col = "red")
unreserved <- subset(women.csv, women.csv$reserved=="0")
unrescorline <- lm(unreserved$GP ~ unreserved$water)
plot(unreserved$GP, unreserved$water)
abline(unrescorline, col = "blue")
plot(women.csv$GP, women.csv$water)
abline(corline, col = "red")
abline(unrescorline, col = "blue")
unrescorline
corline
##problem4
Prestige$binary = ifelse(Prestige$type=="prof",1,0)
lm(Prestige$prestige ~ Prestige$income + Prestige$binary)
##problem5
votepOb <- lm(newhamp$pObama ~ newhamp$votesys)
summary((votepOb))
sysrate <- lm(newhamp$pObama ~ newhamp$votesys + newhamp$povrate)
summary(sysrate)
sysratepci <- lm(newhamp$pObama ~ newhamp$votesys + newhamp$povrate + newhamp$pci)
summary(sysratepci)
sysratepcidean <- lm(newhamp$pObama ~ newhamp$votesys + newhamp$povrate + newhamp$pci + newhamp$Dean)
summary(sysratepcidean)
sysratepcidwhite <- lm(newhamp$pObama ~ newhamp$votesys + newhamp$povrate + newhamp$pci + newhamp$Dean + newhamp$white)
summary(sysratepcidwhite)
deanPObama <- lm(newhamp$pObama ~ newhamp$Dean)
summary(deanPObama)
##problem 6 
##a
votesharediff <- lm(incumbent$voteshare ~ incumbent$difflog)
summary(votesharediff)
plot(incumbent$difflog, incumbent$voteshare)
abline(votesharediff, col = "red")
predshardiff <- predict(votesharediff)
segments(incumbent$difflog, incumbent$voteshare, incumbent$difflog, predshardiff)
##b
presvotediff <- lm(incumbent$presvote ~ incumbent$difflog)
plot(incumbent$difflog, incumbent$presvote)
abline(presvotediff, col = "red")
summary(presvotediff)
predpresdiff <- predict(presvotediff)
segments(incumbent$difflog, incumbent$presvote, incumbent$difflog, predpresdiff)
##c
vsharepvote <- lm(incumbent$voteshare ~ incumbent$presvote)
plot(incumbent$presvote,incumbent$voteshare)
abline(vsharepvote, col = "red")
summary(vsharepvote)
predsharevote <- predict(vsharepvote)
segments(incumbent$presvote, incumbent$voteshare, incumbent$presvote, predsharevote)
##d
resvsharediff <- resid(votesharediff)
respresvdiff <- resid(presvotediff)
resregab <- lm(resvsharediff ~ respresvdiff)
summary(resregab)
plot(respresvdiff, resvsharediff)
abline(resregab, col = "red")
##e
vsharediffvote <- lm(incumbent$voteshare ~ incumbent$difflog + incumbent$presvote)
summary(vsharediffvote)
