library(shiny)
library(tidyverse)
library(DT)
library(shinythemes)

# 1. Assignments 
x <- 42
greeting <- "hello world"
flag <- TRUE # case sensitive (TRUE/FALSE) 
x <- 4.2
x <- 42L

# 2. Vectors 
nums <- c(10,20,30,40)
names <- c("Ada", "Bob", "Charlie")
bools <- c(TRUE, FALSE, TRUE, FALSE)

nums_plus_one <- nums + 1 # vectorised maths - operates on an element-wise level
nums_times_two <- nums * 2

# 3. Missing values! 
has_na <- c(1, NA, 2)
mean(has_na, na.rm = TRUE)
c(1/0, -1/0, 0/0)

# 4. Indexing (1-based)
nums[1]
nums[1:3]
nums[c(TRUE, FALSE, TRUE, FALSE)]

# 5. Data
df <- data.frame(name = names, score = c(95, 88, 12))
tb <- tibble::tibble(name = names, score = c(95, 88, 12))

# 6. Control flow & Functions
# for i in range(3): 
#   print(i)

for (i in 0:2) {
  print(i)
}


# def f(x):
#   return x+1

square <- function(x) {
  x*x
}

square(3)

# leftside |> rightside 

result1 <- arrange(mutate(select(tb, name, score), score2 = score * 2), desc(score2))
result1


result2 <- tb |>
  select(name, score) |>
  mutate(score2 = score * 2) |>
  arrange(desc(score2))

result2






