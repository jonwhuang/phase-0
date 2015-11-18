# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5

def my_array_splitting_method(source)
  return source.partition {|i| i.is_a? Integer}
end

def my_hash_splitting_method(source, age)
  return source.partition {|key, value| value <= age}
end

# Identify and describe the Ruby method(s) you implemented.
# The Ruby method I implemented was the partition method.
# It returns two arrays, the first one where all the elements
# evaluate to true, and the second containing the rest of the
# elements.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# The partition method is an enumerable method. Basically,
# it's a method that uses .each to go through each element.
# For partition, you want to set up the block so that what
# want in the first nested array evaluates to true, while
# everything else will automatically go into the second array.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I realized there is always a possibility of a simpler method.
# At first, for splitting the array, I was using .select and .reject to split
# the arrays based on what we wanted in the nested arrays. When I researched
# on hash, I noticed the partition method and realized I could
# it for both arrays and hashes. Initially, I looked at the list of
# methods on the left to try to find something that might be able to
# work, and then Iwould read up on it and test it out on irb if I felt
# like it was a possibility.