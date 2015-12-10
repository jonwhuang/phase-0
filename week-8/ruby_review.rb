# Create a Car Class from User Stories


# I worked on this challenge by myself.


# 2. Pseudocode
# Create car Class
#   Create attribute readers for model, color, total distance, and speed
#   Create initialize method
#     Take model and color parameters
#     Create instance variable for speed
#     Create instance variable to track distance traveled
#     Create instance variable to track direction, start at north
#   Create method to drive a distance
#     Takes a distance to drive and speed limit as parameter
#     IF @speed if not equal to speed_limit
#       Call accelerate/decelerate method
#   Create turn left method
#   Create turn right method
#   Create accelerate/decelerate
#   Create stop method
#     Change @speed to 0
#   For each method, print out what car does



# 3. Initial Solution

# class Car

#   attr_reader :model, :color, :speed, :total_distance, :pizza_compartment

#   def initialize(model, color)
#     @model = model
#     @color = color
#     @speed = 0
#     @total_distance = 0
#     @direction = "north"
#     @pizza_compartment = ["pizza1", "pizza2", "pizza3"]
#   end

#   def drive(distance, speed_limit = @speed)
#     @total_distance += distance
#     if @speed != speed_limit
#       change_speed(speed_limit)
#     end
#     puts "You drive #{distance} miles at #{speed_limit} mph."
#   end

#   def change_speed(speed)
#     @speed = speed
#     puts "You change your speed to #{@speed} mph."
#   end

#   def turn_left
#     stop

#     case @direction
#     when "north"
#       @direction = "west"
#     when "west"
#       @direction = "south"
#     when "south"
#       @direction = "east"
#     when "east"
#       @direction = "north"
#     end

#     puts "You turn left and now face #{@direction}."
#   end

#   def turn_right
#     stop

#     case @direction
#     when "north"
#       @direction = "east"
#     when "east"
#       @direction = "south"
#     when "south"
#       @direction = "west"
#     when "west"
#       @direction = "north"
#     end

#     puts "You turn right and now face #{@direction}."
#   end

#   def stop
#     @speed = 0
#     puts "Car stops."
#   end


# #Release 4: Add pizza feature
#   def deliver_pizza
#     p @pizza_compartment.delete_at(0)
#   end
# end

# class Pizza

#   attr_reader :toppings

#   def initialize(size, type = "regular", toppings_array)
#     @size = size
#     @toppings = toppings_array
#     @type = type
#   end

#   def add_toppings(toppings)
#     @toppings.push(toppings)
#   end

#   def ready_for_delivery(car)
#     car.pizza_compartment.push(self)
#   end

# end

# 4. Refactored Solution

class Car

  attr_reader :model, :color, :speed, :total_distance, :pizza_compartment

  def initialize(model, color)
    @model = model
    @color = color
    @speed = 0
    @total_distance = 0
    @direction = "north"
    @pizza_compartment = ["pizza1", "pizza2", "pizza3"]
  end

  def drive(distance, speed_limit = @speed)
    @total_distance += distance

    change_speed(speed_limit) if @speed != speed_limit

    puts "You drive #{distance} miles at #{speed_limit} mph."
  end

  def change_speed(speed)
    @speed = speed
    puts "You change your speed to #{@speed} mph."
  end

  def turn_left
    stop

    case @direction
    when "north"
      @direction = "west"
    when "west"
      @direction = "south"
    when "south"
      @direction = "east"
    when "east"
      @direction = "north"
    end

    puts "You turn left and now face #{@direction}."
  end

  def turn_right
    stop

    case @direction
    when "north"
      @direction = "east"
    when "east"
      @direction = "south"
    when "south"
      @direction = "west"
    when "west"
      @direction = "north"
    end

    puts "You turn right and now face #{@direction}."
  end

  def stop
    @speed = 0
    puts "Car stops."
  end

  def deliver_pizza
    p @pizza_compartment.delete_at(0)
  end

end

class Pizza

  attr_reader :toppings

  def initialize(size, type = "regular", toppings_array)
    @size = size
    @toppings = toppings_array
    @type = type
  end

  def add_toppings(toppings)
    @toppings.push(toppings)
  end

  def ready_for_delivery(car)
    car.pizza_compartment.push(self)
  end

end




# 1. DRIVER TESTS GO BELOW THIS LINE

car = Car.new("Toyota", "white")

car.drive(0.25, 25)
car.turn_right
car.drive(1.5, 35)
puts car.speed
car.change_speed(15)
car.drive(0.25)
car.turn_left
car.drive(1.4, 35)
car.stop
puts car.total_distance

car.deliver_pizza
car.deliver_pizza

pizza4 = Pizza.new("medium", "vegetarian", ["cheese", "mushrooms"])
pizza4.add_toppings("pineapple")
p pizza4.toppings
pizza4.ready_for_delivery(car)
p car.pizza_compartment

# 5. Reflection

# What concepts did you review or learn in this challenge?
# I reviewed classes and calling on their attributes or methods in this challenge. I played around with the ready_for_delivery method for my pizza class, which uses self.
# What is still confusing to you about Ruby?
# I think I have a good understanding of Ruby classes so far. I want to go deeper and learn more about it because I know how important data structures are. I want to practice more with nested arrays and hashes because I feel like they may get more complicated later.
# What are you going to study to get more prepared for Phase 1?
# I'll probably work a little bit on accessing values in JS and Ruby for objects, arrays, and hashes since I feel like those are very important. I also saw an inheritance challenge so I might want to try that too.