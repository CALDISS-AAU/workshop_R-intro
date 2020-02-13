
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

b <- 'jedi'
nchar(b) #Returns number of characters in object b

sub("e", "a", b) #Replace first "e" character with "a" character

b

sub("e", "a", b) #Return object b with characters "e" swapped with "a"

b

b <- sub("e", "a", b) #Store object b with characters "e" swapped with "a" as b 

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

ess2014_df <- read.csv("https://github.com/CALDISS-AAU/workshop_python-intro/raw/master/data/ESS2014DK_subset.csv")

head(ess2014_df) #Shows the 6 first rows of each observation

head(rownames(ess2014_df))

colnames(ess2014_df)

dim(ess2014_df)

summary(ess2014_df)

head(ess2014_df$alcfreq) #6 first rows of the variable "alcfreq"

head(ess2014_df[ess2014_df$yrbrn < 1990, "cgtsday"])

mean(ess2014_df[ess2014_df$yrbrn < 1990, "cgtsday"], na.rm = TRUE)

head(ess2014_df[ess2014_df$yrbrn >= 1990, "cgtsday"])

mean(ess2014_df[ess2014_df$yrbrn >= 1990, "cgtsday"], na.rm = TRUE)

mean(ess2014_df$height, na.rm = TRUE)

min(ess2014_df$height, na.rm = TRUE)

head(ess2014_df$height / 100) #converting to meters - first 5 rows

class(ess2014_df$height)

class(ess2014_df$alcfreq)

ess2014_df$height_m <- ess2014_df$height / 100

colnames(ess2014_df)

ess2014_df$height_m <- NULL

colnames(ess2014_df)

?sum

write.table(ess2014_df, file = "my_ess2014dk.csv", sep = ",", col.names = TRUE)

my_ess2014dk <- read.table(file = "my_ess2014dk.csv", header = TRUE, sep = ",")

library(ggplot2)

options(repr.plot.width=8, repr.plot.height=4)

ggplot(data = ess2014_df, aes(x = yrbrn, y = height, colour = gndr)) + 
    geom_point(size = 1, position = "jitter")

ggplot(data = ess2014_df, aes(x = yrbrn, y = cgtsday, colour = gndr)) +
    geom_point(size = 1, position = "jitter")
