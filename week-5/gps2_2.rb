# Method to create a list
def create_list(items)
  list = Hash.new
  items.split(' ').each { |item| list[item] = 0}
  print_list(list)
  return list
end
# input: string of items separated by commas
# steps:
  # split items between spaces
  # create new hash
  # add items to hash and set default quantity
  # print the list to the console using print_list
# output: hash

# Method to add an item to a list
def add(list, item, n=0)
  list[item] = n
  return list
end
# input: item name and optional quantity
# steps:
  # add the item name as the key
  # add quantity as the value
# output:
  # print the updated grocery list as a hash


# Method to remove an item from the list
def remove(list, item)
  list.delete(item)
  return list
end
# input: item name
# steps:
  # remove the item name as the key
# output:
  # print the updated grocery list as a hash


# Method to update the quantity of an item
def update_quant(list, item, n)
  list[item] = n
  return list
end
# input: item name and the new quantity
# steps:
  # update the value for a key
# output:
  # print the updated grocery list as a hash



# Method to print a list and make it look pretty
def print_list(list)
  list.each {|item, n| puts item + ": " + n.to_s }
  puts
end
# input:
# steps:
  # iterate through hash and print out the list
# output:
  # the grocery list



grocery_list = create_list("carrots apples cereal pizza")
add(grocery_list, 'lemonade', 2)
add(grocery_list, 'tomatoes', 3)
add(grocery_list, 'onions', 1)
add(grocery_list, 'ice cream', 4)
remove(grocery_list, 'lemonade')
update_quant(grocery_list, 'ice cream', 1)
print_list(grocery_list)



#can also use the methods like this:
create_list("carrots apples cereal pizza")
add(create_list("carrots apples cereal pizza"), 'lemonade', 2)
add(add(create_list("carrots apples cereal pizza"), 'lemonade', 2), 'tomatoes', 3)


#What did you learn about pseudocode from working on this challenge?
#I think I need to put more detail into pseudocode. They definitely help with creating the initial solution and I had to add a little bit more to my pseudocode while I was creating the initial solution. It helps to organize my thoughts on what to do and gives me an idea of how to work towards the solution.
#What are the tradeoffs of using Arrays and Hashes for this challenge?
#Arrays don't work well for this challenge because a quantity has to be saved for each item. Because arrays are saved using indexes, there can't be a repeat. The items can have the same quantity though so hashes are the ideal storage for this challenge.
#What does a method return?
#A method returns what you designate for it to return. If nothing is designated, it will return the last value.
#What kind of things can you pass into methods as arguments?
#You can pass a lot of things, like strings, integers, floats, and lists. You can also pass another method as an argument and use its return value.
#How can you pass information between methods?
#You can call the methods within another method.
#What concepts were solidified in this challenge, and what concepts are still confusing?
#It definitely helped me to figure out how to call a method within another method. I was confused at the beginning about how we were supposed to go about it, but I think I understand now.