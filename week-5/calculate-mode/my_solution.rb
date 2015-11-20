# Calculate the mode Pairing Challenge

# I worked on this challenge with Michael Du.

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of strings or numbers
# What is the output? An array of the  most frequent values
# What are the steps needed to solve the problem?
=begin
1. Define hash
2. Assign all unique elements to the keys, and assign a default value of 1.
3. Count number of each unique element within array, and assign that value to the hash value.
4. Find max values and put those keys in an array.
5. Return array
=end

# 1. Initial Solution
def mode(array)
  new_hash = Hash.new
  array.uniq.each {|x| new_hash[x] = 1}
  new_hash.each {|element, value| new_hash[element] = array.count(element)}

  max = 0
  new_hash.each {|key, value| max = value if value > max}
  new_hash.select! {|key, value| value == max}
  return new_hash.keys
end


# 3. Refactored Solution
def mode(array)
  hash_one = Hash.new(0)
  array.each {|x| hash_one[x] += 1}

  hash_two = hash_one.select {|key, value| value == hash_one.values.max}
  return hash_two.keys

end

# 4. Reflection
#Which data structure did you and your pair decide to implement and why?
#We used both arrays and hashes. We used hashes to figure out which elements were repeated the most.

#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#I think both of them were broken down pretty well into pseudocode. We followed the pseudocode and was able to successfully create a solution for it.

#What issues/successes did you run into when translating your pseudocode to code?
#We did have a couple issues figuring out how to get our pseudocode to work, especially at the refactoring stage. Otherwise, I think everything else went pretty smoothly.

#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#We used some enumerable methods to iterate through the content. There were some good ones we found, like .max, .count, and .select!. They weren't too difficult to implement. We just had to learn about them and were able to add them into our code.