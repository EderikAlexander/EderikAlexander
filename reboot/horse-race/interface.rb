# welcome message
#define a list
# present a list
# aks user to pick a number
# save number in variable
# run random fucntion on list to define winner
# opt: intermediar results whoe is in the lead? etc
# opt: add money into the mix
# compare the saved number to the number of the winning horse
# print result, interpolated sentence to check result


# horses = ["blacky", "jacky", "sacky", "macky"]

# p "Hey gambler, you wanna take a bet (y/n)?"
# start_answer = gets.chomp
# while start_answer == "y"
#   p "wich horse you want to bet on?"
#   horses.each_with_index do |horse,index|
#   p "#{index}) #{horse}"
#   end
#   horse_choose = gets.chomp.to_i
#   p "you choose #{horses[horse_choose]}"
#   sleep(2)
#   p "#{horses.sample} is in the lead"
#   sleep(2)
#   p "almost at the end, it is getting close #{horses.sample} and #{horses.sample} are neck on neck"
#   sleep(1)
#   winner = horses.sample
#   p "the winner is #{winner}"
#   if winner == horses[horse_choose]
#     p "great man! you won :)"
#   else
#     p "HAHAHA you lost loser"
#   end
#   p "you want to place a bet again (y/n)?"
#   start_answer = gets.chomp
# end
# p "Get out of here scumbag!"
HORSES = ["blacky", "jacky", "sacky", "macky"]

def play_game(text)
  p text
  gets.chomp
end

def run_game(start_answer)
  while start_answer == "y"
    #
    p "wich horse you want to bet on?"
    HORSES.each_with_index do |horse,index|
    p "#{index}) #{horse}"
    end
    #

    #
    horse_choose = gets.chomp.to_i
    #

    #
    p "you choose #{HORSES[horse_choose]}"
    sleep(2)
    p "#{HORSES.sample} is in the lead"
    sleep(2)
    p "almost at the end, it is getting close #{HORSES.sample} and #{HORSES.sample} are neck on neck"
    sleep(1)
    #

    #
    winner = HORSES.sample
    p "the winner is #{winner}"
    #

    #
    if winner == HORSES[horse_choose]
      p "great man! you won :)"
    else
      p "HAHAHA you lost loser"
    end
    #

    start_answer = play_game("you want to place a bet again (y/n)?")
  end
  p "Get out of here scumbag!"

end


start_answer = play_game("Hey gambler, you wanna take a bet (y/n)?")
run_game(start_answer)





