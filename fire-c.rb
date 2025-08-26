# def divide_numbers(a, b)
#   begin
#     result = a / b 
#   rescue ZeroDivisionError
#     puts "Error: You cannot divide by 0"
#     result = nil
#   ensure
#     puts "Division attempt completed"
#   end

#   return result
# end

# p divide_numbers(10, 3)


# def check_word(word)
#  if word.length <= 3 
#   raise "word count not valid"
#  else 
#   p "please enter new word" 
#  end

# end

# begin 
#   check_word("spice") 
# rescue => error 
#   p "Error Code num. 09239422382 - invalid"
# end



# def check_age(age)
#   if age < 0
#     raise "Age cannot be negative"
#   else
#     puts "You are #{age} years old"
#   end
# end


# begin
#   check_age(-5)
# rescue => error
#   puts "An error occurred: #{error}"
# end











# def divide_numbers(a, b)
  # begin
  #   result = a / b 
  # rescue ZeroDivisionError
  #   puts "Error: You cannot divide by 0"
  #   # result = nil
  # rescue NameError
  #   puts "Error: Both arguments must be numbers"
  #   # result = nil
  # rescue
  #   puts "Error: Not sure what exactly happened but it failed"
  #   # result = nil
  # ensure
  #   puts "Division attempt completed"
  # end

#   return result
# end

# p divide_numbers(10)
# puts "--------"
# p divide_numbers("test", "test")
# puts "--------"
# p divide_numbers(10, 2)
# puts "--------"
# p divide_numbers(10, false)











# Message exercises









def divide_numbers(a, b)
  begin
    result = a / b 
  rescue ZeroDivisionError
    puts "Error: You cannot divide by 0"
    # result = nil
  rescue NameError
    puts "Error: Both arguments must be numbers"
    # result = nil
  rescue
    puts "Error: Not sure what exactly happened but it failed"
    # result = nil
  ensure
    puts "Division attempt completed"
  end

  return result
end

p divide_numbers(10)
puts "--------"
p divide_numbers("test", "test")
puts "--------"
p divide_numbers(10, 2)
puts "--------"
p divide_numbers(10, false)





