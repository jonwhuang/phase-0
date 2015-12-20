# Drawer Debugger

# I worked on this challenge with Calvin Lang.
# I spent [#] hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    # @open = true
  end

#   def open
#     @open = true
#   end

#   def close
#     @open = false
#   end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.last) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents = []
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end

end
# Missing end statement after drawer class

class Silverware
  attr_reader :type, :clean


  # Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean = true
  end

  # def clean
  #   @clean
  # end

end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
# What will you need here in order to remove a spoon? You may modify the driver code for this error.
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false


# Reflection

# What concepts did you review in this challenge?
# We were able to work on debugging existing code and making changes to it based on the error messages that were given.
# What is still confusing to you about Ruby?
# I think I feel comfortable with all of the Ruby topics we've covered so far.
# What are you going to study to get more prepared for Phase 1?
# I'm going to review all the topics we've done so far to make sure I understand everything before Phase 1 starts.