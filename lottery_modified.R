# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
# head is 1 tail is 0


library(stats)

# Define variables
max_number_of_coin_flips <- 10L
probability_of_head <- 0.1
max_number_of_repeated_iteration <- 100L

lottery_ticket <- array(0,max_number_of_coin_flips) # 10 coin tosses per iteration
for (individual_iteration in 1:max_number_of_coin_flips){
  outcome_of_coin_toss[individual_iteration] <- if (runif(1) < probability_of_head) 1 else 0
} 
# for every toss, if a random number chosen within a uniform distribution is less than 0.1, you return 1
for (number_of_repeated_iteration in 1:max_number_of_repeated_iteration){
  outcome_of_coin_toss <- array(0,max_number_of_coin_flips)
  for (individual_iteration in 1:max_number_of_coin_flips){
    lottery_ticket[individual_iteration] <- if (runif(1) < probability_of_head) 1 else 0
  }
  print(lottery_ticket)
}
