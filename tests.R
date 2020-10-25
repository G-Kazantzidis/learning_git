source(file = "my_fun.R", local = TRUE)

#### even_odd #
# This fucntion determines whether a number is even or odd. Also works with vectors

even_odd(3)
even_odd(4)
vec<-c(a = 3, b =4)
even_odd(vec)


#### all_fac #
# This fucntion finds all the factors of a number. Returns both negative and positive factors 

all_fac(6)
all_fac(-7)


#### all_fac_l # 
# This function  finds all factors of a sequence (or list) of numbers.
# Returns all the positive factors of each number respectively
# Does not find the common factors

li<-list(c(5,4,7,-9))
all_fac_l(li)


#### my.lm # 
# This fucntion takes a data.frame with variables x and y, estimates the linear regression model
# Returns the p-values of the parameters

df <- data.frame(x = runif(100, 0, 5))
df$y <- with(df, 0.5 - 2 * x + rnorm(100, sd = 0.4))
my.lm(df)


#### my.test #
# This fucntion calculates the mean difference between two variables x and y from a training set and uses this mean difference
# to predict the viable y given the variable x in a second, evaluation data set
# Returns a list with the fitted values (1rst col) of the first, training data set and their residuals (2nd col)
# Also returns the predicted values (3nd col) for the second, evaluation data set and their errors (4rth col)

mytrain<-data.frame(x = rnorm(10, 5 , 2), y = rnorm(10, 7 , 2))
mypred<-data.frame(x = rnorm(10, 5 , 2), y = rnorm(10, 7 , 2))
out_list<-my.test(mytrain, mypred)
out_list

