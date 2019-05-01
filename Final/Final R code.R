##problem 5
y <- matrix(c(221,224,139,196), ncol = 2, nrow = 2, byrow = TRUE)
rownames(y) <- c("Dem", "Rep")
colnames(y) <- c("Yes", "No")
chisq.test(y, correct = TRUE)
