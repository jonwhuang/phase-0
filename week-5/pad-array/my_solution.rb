# Pad an Array

# I worked on this challenge with Albert Hahn.

# I spent 1.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#pad!
#input: array, minimum size of array, and optional padding value
#output: original array replaced with padded array
#steps:
#1. Determine if array length is greater than or equal to minimum size
#2. IF true, return original array
#3. ELSE determine difference (x) between minimum size and array length
#4. Push the padding value (x) number of times to the array

#pad
#input: array, minimum size of array, and optional padding value
#output: new array with padding but does not replace original array
#steps:
#1. Determine if array length is greater than or equal to min size
#2. IF true, return new array thats equal to the original array
#3. ELSE determine difference (x) between min size and array length
#4. Push the padding value (x) number of times to the NEW array, not altering the original array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    diff = min_size - array.length
    while diff > 0
      array.push(value)
      diff -= 1
    end
    return array
  end
end




def pad(array, min_size, value = nil) #non-destructive
  if array.length >= min_size
    return Array.new(array)
  else
    new_array = Array.new(array)
    diff = min_size - array.length
    while diff > 0
      new_array.push(value)
      diff -= 1
    end
    return new_array
  end
end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  return array if array.length >= min_size

  array.push(value) while min_size > array.length
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  return Array.new(array) if array.length >= min_size
=begin
  new_array = Array.new(array)
  new_array.push(value) while min_size > new_array.length
=end
  Array.new(array).fill(value, array.length, min_size - array.length)

end


# 4. Reflection
#Were you successful in breaking the problem down into small steps?
#Yes, we broke the problem down and didn't really have too much difficulty with it.

#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#We built a pretty good pseudocode, so we translated it directly into code. I had my greater and less than signs mixed up but fixed it easily.

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#Yes, they were successful at passing. We made a few minor tweaks after looking it over but I think doing the pseudocode beforehand helped us outline the code a lot better.

#When you refactored, did you find any existing methods in Ruby to clean up your code?
#We found the .fill method to help clean up the code a little more, but we only found that at the very end. Initially, we just shortened it.

#How readable is your solution? Did you and your pair choose descriptive variable names?
#I think our refactored solution is pretty readable. We didn't use any new variables for our refactored solution, but just stuck with the parameter names.

#What is the difference between destructive and non-destructive methods in your own words?
#Destructive methods changes an object that is passed to it, like the array that we did for this assignment for the pad! method. Non-destructive methods will return a new object.