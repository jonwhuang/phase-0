# Your Names
# 1) Jonathan Huang
# 2) Mohammad Amin

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.
def serving_size_calc(item_to_make, order_quantity)

  #hash
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{item_to_make} is not a valid input") if !library.include?(item_to_make)


  #determine if item_to_make is a key in library hash
  #Return argument error if it isn't
  # error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end


  #Retrieving hash value to determine how many ingredients needed for one serving
  serving_size = library[item_to_make]
  #Determine how many ingredients are left
  left_over_item = order_quantity % serving_size

  items_made = order_quantity/serving_size

  #Extra feature:
  #Use leftover ingredients to make other items
  #IF leftover ingredients is greater than or equal to 5
  #  Calculate how many cakes to make
  #IF leftover ingredients is greater than 0
  #  Calculate how many cookies to make
  if left_over_item == 6
    extra_item = "Make 1 Cookie and 1 cake."
  elsif left_over_item == 5
    extra_item = "Make 1 Cake."
  else
    extra_item = "Make #{left_over_item} cookies."
  end


  #When there's no leftover ingredients, return how many items you can make
  #When there is, return how many items you can make + how much leftover and what you can do with it
#   case left_over_item
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{left_over_item} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end

  if left_over_item == 0
    puts "Calculations complete: Make #{items_made} of #{item_to_make}."
  else
    puts "Calculations complete: Make #{items_made} of #{item_to_make}, you have #{left_over_item} leftover ingredients. Suggested baking items: #{extra_item}"
  end
end



serving_size_calc("pie", 7)
serving_size_calc("pie", 15)
serving_size_calc("cake", 5)
serving_size_calc("cake", 7)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)
serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
I learned that there are many ways that we can write the code to obtain the same result. However, there are many ways that will make the code more readable and neat so that someone else who is reading the code will understand what is going on with it.
Did you learn any new methods? What did you learn about them?
It's not really a method, but I got more practice with using #{} in printing out statements.
What did you learn about accessing data in hashes?
To access a value in a hash, you just have to refer to the key: hash[key] = value.
What concepts were solidified when working through this challenge?
It was a good practice for refactoring code. We didn't have too much trouble with it but the first argument error section did take a longer time to figure out what was happening.
I also don't have the habit of making comments of sections of code so it was good practice for that too.
=end