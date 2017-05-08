def calculate(answer_one, answer_two, answer_operation)
    if answer_operation == "+" || answer_operation == "[+]"
      result = "Result: #{answer_one + answer_two}"
      p result
    elsif answer_operation == "-" || answer_operation == "[-]"
      result = "Result: #{answer_one - answer_two}"
      p result
    elsif answer_operation == "x" || answer_operation == "[x]" || answer_operation == "*"
      result = "Result: #{answer_one * answer_two}"
      p result
    elsif answer_operation == "/" || answer_operation == "[/]"
      result = "Result: #{answer_one.fdiv(answer_two)}"
      p result
    end
end
