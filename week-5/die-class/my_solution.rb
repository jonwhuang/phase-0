# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.

# 0. Pseudocode

# Input: Number of sides the die has
# Output: Die class that can roll and return number of sides
# Steps:
=begin
Create initialize method
  IF number less than one is passed
    raise argument error
  ELSE
    Create instance variables

Create sides method
  Return number of sides

Create roll method
  Return random number between 1 and number of sides, inclusive.
=end


# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("Only positive integers allowed")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("Only positive integers allowed")
    end
    @sides = sides
  end

  attr_reader :sides

  def roll
    rand(1..@sides)
  end
end


# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An argument error is an error raised when the arguments passed are incorrect. It can be raised when the wrong number of arguments are passed, or if the argument passed is not acceptable.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I learned to use ArgumentError as well as a Ruby class. It seemed pretty basic so far so I didn't have trouble setting it up.

What is a Ruby class?
A Ruby class allows the user to create objects to use. The class is where you can build the particular methods and attributes for that object.

Why would you use a Ruby class?
A Ruby class is used to organize methods for a particular object so that it can be called on whenever needed. This way, you don't have to rewrite that method every single time.

What is the difference between a local variable and an instance variable?
A local variable is only accessible within the scope that it was created in, like in the method it was created in. An instance variable is labeled with @ and can be accessible within the class that it was defined, even if it was defined in a specific method.

Where can an instance variable be used?
An instance variable can be used to represent an object's values, like height, width, and length. It can be used within the class that it was defined, but not outside of it.

=end