
#prep
my_name <- "kenobi"
my_num1 <- 42 
my_num2 <- "42"
my_calc <- 42 * 42

2 + 5

0.37 * 256

a <- 2 + 5

a

b <- 'jedi'

b

my_num1 * 2

my_num2 * 2

my_calc * 2

my_name * 2

my_name2 <- vader

my_num2 <- as.numeric(my_num2)
my_product <- my_num1 * my_num2

my_test <- my_product == my_calc
my_test

class(my_test)

my_vec <- c(1, 9, 7, 3)
my_vec

my_vec2 <- append(my_vec, 22)
my_vec2

my_vec3 <- c(my_vec, 22)
my_vec3

class(my_vec)

my_vec

2 * my_vec

my_vec > 5

2 * my_vec[2]

my_vec

my_vec[2] <- 11
my_vec

# EXERCISE 3
my_numvec <- c(my_num1, my_num2, my_calc, my_product)

class(my_numvec)

sum(my_numvec)

# EXERCISE 3 - BONNUS
my_numvec <- c(my_numvec, my_name)

class(my_numvec)

data(mtcars)

head(mtcars) #Shows the 6 first rows of each observation

rownames(mtcars)

colnames(mtcars)

head(mtcars$mpg) #6 first rows of the variable "Miles per galon"

mean(mtcars$mpg)

min(mtcars$mpg)

2 * mtcars$mpg

mtcars$wtpergear <- mtcars$wt / mtcars$gear

colnames(mtcars)

mtcars$wtpergear <- NULL

colnames(mtcars)

?sum

write.table(mtcars, file = "my_mtcars.csv", sep = ",", col.names = TRUE)

my_mtcars <- read.table(file = "my_mtcars.csv", header = TRUE, sep = ",")

library(ggplot2)

ggplot(data = mtcars, aes(x = wt, y = mpg, colour = am)) + 
    geom_point(size = 3)
