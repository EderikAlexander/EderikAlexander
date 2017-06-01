require_relative "methode"
require "open-uri"
require "nokogiri"
require "json"


filepath = 'list.json'

chrismas = File.read(filepath)

christmas_list = JSON.parse(chrismas)
#def welcome
p "Hi Inou, start creating your own christmas list"
sleep(2)
p "Wauw, your Christmas list is still empty, come on let's fill it!"
sleep(2)
p "Choose 'Add', 'Delete', 'Mark', 'Idea', or 'Exit to stop'"
user_action = gets.chomp.downcase
#end


until user_action == "exit" || user_action == "Exit"
  case user_action
    when "add"
      p "Write down the product you want to add"
      product_add = gets.chomp
      p "Do you want #{product_add} to be marked? y/n"
      marked_or_not = gets.chomp
          if marked_or_not == "y" || marked_or_not == "yes"
            christmas_list[product_add]=true
            p "your product #{product_add.upcase} is added to the list and marked!"
          elsif marked_or_not == "n" || marked_or_not == "no"
            christmas_list[product_add]=false
            p "your product #{product_add.upcase} is only added to your list!"
          else
            until marked_or_not == "y" || marked_or_not == "n" || marked_or_not == "yes" || marked_or_not == "no"
              p "We didn't get you, choose y/n"
              marked_or_not = gets.chomp
                if marked_or_not == "y" || marked_or_not == "yes"
                  christmas_list[product_add]=true
                  p "your product #{product_add.upcase} is added to the list and marked!"
                else marked_or_not == "n" || marked_or_not == "no"
                  christmas_list[product_add]=false
                  p "your product #{product_add.upcase} is only added to your list!"
                end
            end
          end
      p "What do you want to do next? Add/delete/mark/idea/exit."
      user_action = gets.chomp

    when "delete"
        p "Write the product you want to delete"
          delete_product = gets.chomp
        if christmas_list.has_key?(delete_product)
            christmas_list.delete(delete_product)
            p "#{delete_product} is deleted from the list"
        else
          p "You don't have this product on your list"
          p "choose add/delete/mark/exit"
          user_action = gets.chomp.downcase
        end
      p "What do you want to do next? Add/delete/mark/idea/exit."
      user_action = gets.chomp.downcase

    when "mark"
      p "Write the product you want to Mark"
      marked_product = gets.chomp
        if christmas_list.has_key?(marked_product)
          christmas_list[marked_product]=true
          p "your product #{marked_product.upcase} is now marked!"
          p "What do you want to do next? Add/delete/mark/exit."
          user_action = gets.chomp.downcase
        else
          p "this product is not on your list"
          p "choose add/delete/mark/exit"
          user_action = gets.chomp.downcase
        end
      p "What do you want to do next? Add/delete/mark/idea/exit."
      user_action = gets.chomp.downcase

    when "idea"
      puts "What are you searching on Etsy?"
      article = gets.chomp
      # 1. We get the HTML file thanks to open-uri
      file = open("https://www.etsy.com/search?q=#{article}")

      # 2. We build a Nokogiri document from this file
      doc = Nokogiri::HTML(file)

      # 3. We search every elements with class="card" in our HTML doc

      doc.search(".card").each do |card|
      # 4. for each element found, we extract its title and print it
      title = card.search(".card-title").text.strip
      puts title
      end

      p "What do you want to do next? Add/delete/mark/idea/exit."
      user_action = gets.chomp.downcase
    else
      p "We didn't understand your choose."
      p "Pick on of these actions: 'add', 'delete', 'mark', 'idea' or 'exit'!"
      user_action = gets.chomp.downcase
    end
end

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(christmas_list))
end

marked_list = {}
marked_list = christmas_list.select {|k,v| v == true}

p "Your created list has the following products: '#{christmas_list.keys.join("-")}'"
p "These are the products your are really going to buy: '#{marked_list.keys.join("-")}'"


# List | add | Delete | Mark | Inspiration | Exit

# => Welcome
# => Display menu (list / add / delete / mark )
# => Get user action
# => store user choose
# => make sure you have a way out
# =>
# => Perform the right action
# use case & when loop with until exit action == exit
# =>  opt persistance of data
# => opt inspiration

# =>  welcome joe
# => define a variable
# => start a loop
# => present list of actions
# => ask user for action that they want to perform save it in a variable
# => based on the action execute some code
# => based on a action exit t he loop
# => key is name gift value is true of false. True is marked false is not.
#
