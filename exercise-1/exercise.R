# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
seahawk.score <- c(9, 12, 27, 46)


# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
opp.score <- c(17, 9, 33, 18)

# Combine your two vectors into a dataframe called `games`

games <- data.frame(seahawk.score, opp.score, stringsAsFactors=FALSE)
# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!

games$diff <- abs(games$seahawk.score - games$opp.score)
# Create a new column "won" which is TRUE if the Seahawks won the game

games$won <- c(FALSE, TRUE, FALSE, TRUE)
# Create a vector of the opponent names corresponding to the games played

opp.names <- c("Green Bay", "San Francisco", "Tennessee", "Indianapolis")
# Assign your dataframe rownames of their opponents
games$opponents <- opp.names

# View your data frame to see how it has changed!
games
