# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!
grants <- read.csv("data/gates_money.csv")


# Use the View function to look at the loaded data
grants

# Create a variable `organization` that contains the `organization` column of 
# the dataset
organization <- grants$organization

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 

is.vector(organization)
# This is a useful debugging tip if you hit errors later!


## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
spending <- mean(grants$total_amount)

# What was the dollar amount of the largest grant?
largest <- max(grants$total_amount)

# What was the dollar amount of the smallest grant?

smallest <- min(grants$total_amount)
# Which organization received the largest grant?

organization[grants$total_amount == largest]
# Which organization received the smallest grant?

organization[grants$total_amount == smallest]
# How many grants were awarded in 2010?
length(grants$total_amount[grants$start_year == 2010])

