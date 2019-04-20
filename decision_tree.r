install.packages("tree")
library(tree)
A = data.frame(iris)
A1 = na.omit(A)
sf = sample(2, nrow(A1), replace = TRUE, prob = c(0.7,0.3))

trd = A1[sf==1,]
tsd = A1[sf==2,]
model1 = tree(Species ~ ., data = trd)

plot(model1)
text(model1)

pred = predict(model1, tsd)
cbind(pred, tsd$Species)