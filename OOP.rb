# # <!-- 



# # syntax errors : 
# #  doesnt follow the rules of ruby command 
# # happens when the code is not running 




# # handling errors without crashing programs 
# # function divide numbers 

# # begin >  where code starts 
# # make the result equals NIL 
# # always have an end

# # rescue > 
# # insure > 
# #  -->



# #  Create a file named error_handling.rb.
# # Write a method that takes two numbers and divides them.
# # Use begin and rescue to handle ZeroDivisionError.
# # Use ensure to print a message indicating the operation is complete.

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

# # p divide_numbers(10, 2)
# Create a new Ruby file called oop.rb and define an empty Person class.                
# Instructions:
# Open VSCode and create a new file named oop.rb.
# Define an empty Person class.
# Create an instance of Person and assign it to a variable.
# Print the class of the instance using puts.

# Activity:
# Task: Extend the Person class to include an age attribute.
# Instructions:
# Add methods set_age and get_age.
# Use @age as the instance variable for age.Create an instance of Person, set the name and age, and print them.



# class Person
#   def set_name(name)
#   @name = name 
# end 

#   def get_name 
#     return @name 
#   end
  
# def set_age(age)
#   @age = age
# end


# def get_age 
#   return @age 
#   end 
# end

# person1 = Person.new 
# person1.set_name("ed")
# p person1.get_name

# person1.set_age("44")
# p person1.get_age 


# person2 = Person.new 
# person2.set_name("adrian") 
# p person2.get_name 


# person3 = Person.new 
# person3.set_name("Bri") 
# p person3.get_name 

def initialize 

class Person
  def set_name(name)
    @name = name
  end

  def get_name
    return @name
  end
# end

# person1 = Person.new
# person1.set_name("Adrian")
# p person1.get_name

# person2 = Person.new
# person2.set_name("Ron")
# p person2.get_name





# Exercise:
# Task: Refactor your Person class to use attr_reader and attr_writer for name and age.
# Instructions:
# Replace getter and setter methods with attr_reader and attr_writer.
# Update your code to use person.name and person.age for accessing and modifying values.
# Test by creating a person, printing the name and age, updating them, and printing again.
# (edited)




# class Person
#   # getter methods
#   attr_reader :name, :age
#   # setter methods
#   attr_writer :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# person1 = Person.new("Leon", 26)
# p person1.name
# p person1.age
# person1.name = "Kiko"
# person1.age = 27
# p person1.name
# p person1.age




# class Person 
#   # attr_reader :name, :age, :level    
#   # attr_writer :name, :age, :level     
# attr_accessor :name, :age, :level 

#   def initialize(name,age,level)
#   @name = name 
#   @age = age 
#   @level = level
#   end 
# end

person1 = Person.new("james", 33, "L1")
  p person1.name 
  p person1.age 
  p person1.level
person1.level = "L8"
person2 = Person.new("kyle", 44, "L2")
  p person2.name 
  p person2.age 
  p person2.level

  person3 = Person.new("Fred", 55, "L3")
  p person3.name
  p person3.age 
  p person3.level


class Surfboard 
  attr_accessor :length, :width, :thickness

  def intitialize(length,width,thickness) 
    @length = length 
    @width = width 
    @thickness = thickness 
  end
end 


Surfboard1 = Surfboard.new = ("56","19.25"."2.25")

