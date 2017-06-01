def welcome
p "Hi Inou, start creating your own christmas list"
sleep(3)
p "Wauw, your Christmaslist is still empty, what do you want to do?"
sleep(2)
p "Choose 'Add', 'Delete', 'Mark if you really want to buy the product' or 'Exit to stop'"
user_action = gets.chomp
end

def closer (christmas_list)
if christmas_list.size == 0
p "Your list is still empty, come back if you want to fill it"
else
p "Your christmas list has the following items #{christmas_list[key][true]} marked that you really want to buy"
end
end

def add
p "Write down the product you want to add"
product_add = gets.chomp
christmas_list["product_add"]=false
p "your product #{product_add.upcase} is added to the list!"
p "What do you want to do next? Add/delete/mark/exit."
user_action = gets.chomp
end


def add_marked (marked_or_not)
  if marked_or_not == "y" || marked_or_not == "yes"
  christmas_list[product_add]=true
    p "your product #{product_add.upcase} is added to the list and marked!"
  elsif marked_or_not == "n" || marked_or_not == "no"
    christmas_list["product_add"]=false
    p "your product #{product_add.upcase} is only added to your list!"
  else
    p "We didn't get you, choose y/n"
    marked_or_not = gets.chomp
  end
end
