#pseudo code
# Pseudo-code
# => Print Welcome
# => Define your store (with a bunch of food items)
# => show list with items
# => Get items from the user (shopping step)
# => add more products? show new list loop until the say no more items
# => store items in hash
# => count sum of the values
# => Print the bill (cashier step)

PRODUCTLIST = {
  mars: 1,
  twix: 3,
  snicker: 2,
  bounty: 4
}

STOCK ={
  mars: 10,
  twix: 30,
  snicker: 20,
  bounty: 40
}

def welcome
p "Welcome at supermarkED"
p "This is our current productlist"
PRODUCTLIST.each do |key,value|
  p"#{key}  € #{value}"
end
end

def play_super
list_cart = {}
sum_value = 0
stock_value = 0
sumy_value = 0
welcome
p "Which product do you want to add to your cart?"
product_answer = gets.chomp
while product_answer != "stop" # dit klopt nog niet werk hier aan
    if PRODUCTLIST.has_key?(product_answer.to_sym)
      sumy_value += PRODUCTLIST[product_answer.to_sym]
       p "How many products? Enter 'stop' to see the bill and pay"
       answer = gets.chomp.to_i
      list_cart[product_answer] = answer
       sum_value = answer
       stock_value += answer
      while stock_value > STOCK[product_answer.to_sym]
      stock_value = 0
      p "sorry we only have #{STOCK[product_answer.to_sym]} available, pick a new number"
      answer_one = gets.chomp.to_i
      stock_value += answer_one
      sum_value = answer_one
    end
    sum_value = sum_value * sumy_value
      p "add another product, Enter 'stop' to see the bill and pay"
        product_answer = gets.chomp
    else
    p "this product is not in stock, choose another or enter 'stop'"
    product_answer = gets.chomp
    end
end
p "your total product list is: "
list_cart.each {|pro,value| p "#{pro} : #{value}" }
p "Thank you for shopping, your total amount is #{sum_value}"
p "Goodbye and see you next time at supermarkED"
end
play_super





