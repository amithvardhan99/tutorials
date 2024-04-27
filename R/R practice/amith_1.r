cat("\014")

library("datasets")
head(iris)

hist(iris$Petal.Length)
summary(iris$Petal.Length)
summary(iris$Species)

versicolor = iris[iris$Species == "versicolor",]
virginica = iris[iris$Species == "virginica",]
setosa = iris[iris$Species == "setosa",]

par(mfrow=c(3,1))

hist(versicolor$Petal.Length,
     main="Petal Length: versicolor",col = "red")
hist(virginica$Petal.Length,
     main="Petal Length: virginica",col="purple")
hist(setosa$Petal.Length,
     main="Petal Length: setosa",col="yellow")

virginica_petal_less_than_5 = virginica[virginica$Petal.Length < 5.5,]
hist(virginica_petal_less_than_5$Petal.Length,col="orange")


v1 = matrix(data=c(1,2,3,4,5,6),ncol=2)
v1
v2 = matrix(data=c(1,2,3,4,5,6),nrow=3,byrow = TRUE)
v2
v3 = array(data=c(1,2,3,4,5,6,7,8,9,10),dim=c(5,2))
v3

vNumeric = c(1,2,3)
vCharacter = c("a","b","c")
vLogical = c(T,F,T)

df = as.data.frame(cbind(vNumeric,vCharacter,vLogical))
df

df_1 = as.data.frame(rbind(vNumeric,vCharacter,vLogical))
df_1

o1 = c(1,2,3)
o2 = c("a","b","c","d")
o3 = c(T,F,T,T,F)

list1 = list(o1,o2,o3)
list1

list2 = list(o1,o2,o3,list1)
list2


x = 1:3
x
y = 1:9
y
df = as.data.frame(cbind(x,y))
df
