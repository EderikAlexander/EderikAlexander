require_relative "calculator.rb"

p "Hello welcome, do you want to calculate something (yes/no)"
calculator = gets.chomp
until calculator == "n" || calculator == "no"
  p "Enter a first number"
  answer_one = gets.chomp.to_i
  p "Enter a second number"
  answer_two = gets.chomp.to_i
  p "Which operation [+][-][x][/]"
  answer_operation = gets.chomp
    until answer_operation == "+" || answer_operation == "-"||answer_operation == "x"||answer_operation == "/"
      p "Choose a correct operation [+][-][x][/]"
      answer_operation = gets.chomp
    end
      calculate(answer_one, answer_two, answer_operation)
p "Do you want to calculate something more (yes/no)"
    calculator = gets.chomp
end
p "okay see ya"



# p calculate(calculator)


# First handling only additions

# pseudo code

# say hello
# get first number
# get second number
# get operation
# do the counting
# return result

