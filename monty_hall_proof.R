# By: Miller

doors <- c("A", "B", "C")
wins <- 0
n <- 10000

for (i in 1:n) {
  # Choose which door the car is behind
  car <- sample(doors)[1]
  # The contestant chooses a door
  contestant <- sample(doors)[1]
  # Monty opens a door that the car is not behind
  monty <- sample(doors[which((doors != car) & (doors != contestant))])[1]
  # Force the contestant to switch
  contestant <- sample(doors[which((doors != monty) & (doors != contestant))])[1]
  # Count the wins
  if(contestant == car){wins <- wins+1}
}

(wins/n)