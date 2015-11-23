# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: When rolled, returns one of the strings.
# Steps:
=begin
Create initialize method
  IF array is empty
    raise argument error
  ELSE
    create instance variables (sides is length of array)
Create sides method
  Return length of array
Create roll method
  Return a random array element

=end


# Initial Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Cannot take empty array as argument")
    end
    @sides = labels.length
    @labels = labels
  end

  def sides
    @sides
  end

  def roll
    @labels[rand(0..(@sides-1))]
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("Cannot take empty array as argument") if labels.empty?
    @sides = labels.length
    @labels = labels
  end

  attr_reader :sides

  def roll
    @labels[rand(0...@sides)]
  end
end


# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The main difference is that an array was actually passed this time instead of just the number of sides. I had to change a couple things, like storing the information of the array and using it but that was about it.
What does this exercise teach you about making code that is easily changeable or modifiable?
It wasn't too complicated and I just have to adjust for what I'm trying to accomplish.
What new methods did you learn when working on this challenge, if any?
I didn't employ any new methods.
What concepts about classes were you able to solidify in this challenge?
Initializing the instance variables. At first, I didn't initialize @labels and my tests were failing.
=end