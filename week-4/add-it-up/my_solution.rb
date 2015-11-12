# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with David Ma.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Any array of integers or floats
# Output:  Sum of all elements in the array
# Steps to solve the problem.
# 1. Define variable and the parameters
# 2. Create local variable (we'll call it sum) to hold the sum before we iterate
# 3. Using the .each method, iterate through the array and add it to 'sum'
# 4. Return the sum

# 1. total initial solution

def total(array)
  sum = 0
  array.each do |i|
    sum = sum + i
  end
  sum
end


# 3. total refactored solution

def total(array)
  return array.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: The strings joined together as a sentence.
# Steps to solve the problem.

#1. Create a local variable (sentence) to hold the sentence.
#2. Using .each method, add the string in the array to 'sentence' with a space
#3. Capitalize first letter of sentence.
#4. Use .strip to remove last space and append a period.
#4. Return 'sentence'


# 5. sentence_maker initial solution

def sentence_maker(array)
  sentence = ''
  array.each do |i|
    sentence = sentence + i.to_s + " "
  end

  sentence.capitalize.strip << "."
end

# 6. sentence_maker refactored solution

def sentence_maker(array)
  array.join(" ").capitalize.strip << "."
end