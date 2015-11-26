#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input: Initialize Greetings
# Output: A greeting to the name in NameData
# Steps:
=begin
Create NameData class
  Initialize instance variable for name

Create Greetings class
  Initialize instance of NameData
  Create hello method
    Print a greeting with name to console
=end

class NameData

  attr_accessor :name

  def initialize
    @name = "Jonathan"
  end

end


class Greetings

  attr_accessor :name

  def initialize
    @name = NameData.new.name
  end

  def hello
    puts "Hello #{@name}! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."
greet.name = "Sam"
greet.hello

# Reflection
=begin
Release 1:
What are these methods doing?
These methods are either printing out the instance variables, or changing the instance variables.
How are they modifying or returning the value of instance variables?
They are modifying or returning by calling on the method created for each instance variable, like "what_is_age" and "change_my_age=". "what_is_age" method is replaced with attr_reader.

Release 2:
What changed between the last release and this release?
What was replaced?
The method change_my_age= was replaced with attr_writer. The output is the same. Assigning a new value for age only requires =.
Is this code simpler than the last?
The code is a little simpler than the last one.

Release 3:
What changed between the last release and this release?
What was replaced?
attr_reader :age and attr_writer: age were replaced with attr_accessor :age. Output is still the same.
Is this code simpler than the last?
Yes.

Release 6:
What is a reader method?
A reader method lets the user read the object (or get the value of the object) without defining an entirely new method using attr_reader.
What is a writer method?
A writer method lets the user set a new value for an object without defining an entirely new method using attr_writer.
What do the attr methods do for you?
The attr methods help make the code simpler and shorter.
Should you always use an accessor to cover your bases? Why or why not?
No, because not all attributes need both the reader and writer methods. It could cause problems in longer code and make it harder to debug if an incorrect change was made with an accessor to an object that should not have been changed.
What is confusing to you about these methods?
Accessing NameData from Greetings was a little confusing at first but now it makes sense!
=end