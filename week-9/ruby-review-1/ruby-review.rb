# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode

# Create attribute to read number of Pez left in dispenser

# Create initialize method.
#   Input: A group of flavors
#   Output: New Pez dispenser object
#     Create instance variable to hold the Pez flavors.
#     Create instance variable for number of Pez left in dispenser.

# Create a method to take a Pez from dispenser and eat it
#   Input: None
#   Output: Pez flavor taken out of dispenser
#   Take first Pez out of dispenser and remove
#   Update number of Pez left in dispenser

# Create a method to add a Pez to dispenser
#   Input: Pez flavor to add to dispenser
#   Output: None
#   Add the Pez flavor to the array holding Pez
#   Update number of Pez left in dispenser

# Create a method to see all flavors in dispenser
#   Input: None
#   Output: List of flavors
#   Iterate through the array holding flavors
#   Print out each flavor




# Initial Solution

# class PezDispenser

#   attr_reader :pez_count

#   def initialize(flavors)
#     @flavors = flavors
#     @pez_count = @flavors.length
#   end

#   def get_pez
#     @pez_count -= 1
#     @flavors.shift
#   end

#   def add_pez(flavor)
#     @pez_count += 1
#     @flavors.push(flavor)
#   end

#   def see_all_pez
#     puts "From first to last:"
#     @flavors
#   end

# end



# Refactored Solution

class PezDispenser

  attr_reader :pez_count

  def initialize(flavors)
    @flavors = flavors
    @pez_count = @flavors.length
  end

  def get_pez
    @pez_count -= 1
    @flavors.shift
  end

  def add_pez(flavor)
    @pez_count += 1
    @flavors.push(flavor)
  end

  def see_all_pez
    @flavors.each_with_index{|flavor, index| puts (index + 1).to_s + ". " + flavor}
    return nil
  end

end


# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"


# Reflection

# What concepts did you review in this challenge?
# The challenge reviewed how to create a class and adding methods and attributes to it.
# What is still confusing to you about Ruby?
# I don't think using classes in Ruby is confusing to me right now. It seems like I understand it pretty well now.
# What are you going to study to get more prepared for Phase 1?
# I want to study more on nested arrays and Javascript objects as well. I feel like Javascript objects are a little more confusing than Ruby objects.