# interface.rb

# Pseudo-code:
#  Print welcome
#  make array with horses
#  Get horses
#  Get user's bet
#  store users bet
#  Run the race with random
#  Print results
horses = ["blacky", "jacky", "sacky", "macky"]

p "Hey gambler, you wanna take a bet (y/n)?"
start_answer = gets.chomp
until start_answer == "n"
  p "These are the horses#{horses.each_with_index}"
