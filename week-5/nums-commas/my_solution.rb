# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? A comma-separated integer as a string
# What are the steps needed to solve the problem?
=begin
Split input into array with one integer in each index
Determine how many commas are needed based on array length using modulus
IF commas are needed
  Insert commas based on array index
  Increase index by 4 for each insertion
  Repeat while commas are still needed
Join array back into a string
=end

# 1. Initial Solution
def separate_comma(integer)
  new_array = integer.to_s.split(//)
  number_of_commas = (new_array.length - 1) / 3
  counter = 1
  while number_of_commas > 0
    new_array.insert(counter * -4, ',')
    counter += 1
    number_of_commas -= 1
  end
  new_array.join('')
end

# 2. Refactored Solution
def separate_comma(integer)
  new_array = integer.to_s.split(//)
  (1..(new_array.length-1)/3).map {|i| i * -4}.each {|i| new_array.insert(i, ',') }
  new_array.join('')
end

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
I gave myself a lot of time to think through the problem. I looked at the problem on Monday, and thought about it for a couple days before I actually started on my pseudocode. I split the problem into three main parts: creating an array, changing an array, and then recombining the array.

Was your pseudocode effective in helping you build a successful initial solution?
My pseudocode was useful only on the part where I was changing the array to insert the commas. The beginning and ending portions were only there just to list the step. The initial solution was successful based on following the pseudocode, though I altered it from the pseudocode in the refactored solution.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I didn't use any brand new Ruby method that I haven't used yet. I only started using .map today, so I guess that could be a new one for Ruby in general. I tried to use each_with_index for the first time, but it didn't work out for what I was trying to do because I couldn't figure out how to iterate through negative indexes. I had to rethink my process from the beginning for iterating through the array to to come up with a new solution.

How did you initially iterate through the data structure?
I used a while loop to iterate through the data structure initially. In my refactored solution, I just used each to go through the array I created of indexes where commas should be added.

Do you feel your refactored solution is more readable than your initial solution? Why?
I think the refactored solution is more readable, especially if I split my middle section into two separate lines. The code is cleaner and shorter and does not have a bunch of local variables.
Usually, for the initial solution, I don't worry about how many lines or local variables my code has so it ends up being a little messy.

=end