# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer
# Output: Symbol representing the result of comparing guess with answer
# Steps:
=begin

Create initialize method
  Takes integer answer as input

Create guess method
  Takes integer guess as input
  IF guess > answer
    Return symbol :high
  ELSE IF guess < answer
    Return symbol :low
  ELSE
    Return symbol :correct


Create solved? method
  IF most recent guess was correct
    returns true
  ELSE
    returns false

=end


# Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    case
    when guess > @answer
      return :high
    when guess < @answer
      return :low
    when guess == @answer
      return :correct
    end
  end

  def solved?
    return true if @answer == @guess
    return false
  end
end

# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    @solved = @answer == guess ? true : false
    case
    when guess > @answer
      return :high
    when guess < @answer
      return :low
    when guess == @answer
      return :correct
    end
  end

  def solved?
    return @solved
  end
end



# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
You are able to use instance variables within that call of the class, and the methods can use the instance variables and do something to them. We're able to make changes to that object's variables and save it for that object.
When should you use instance variables? What do they do for you?
You use instance variables when you want to be able to access it throughout the class. It can be used to store information about the current object.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
I did struggle a little bit setting up the flow control for this challenge. Mostly, it was how to transfer the information between the methods. To do this, I had to create new instance variables that I didn't plan for during the pseudocode.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Symbols are unique. By returning symbols, we're sure that we won't get a duplicate copy of it. They also cannot be changed and saves memory.
=end