#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


# Virus Predictor

# I worked on this challenge with Nick Davies.
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
# This requires that a file called state_data.rb exist in the relative location specified (in this case, in the same directory), and loads the contents.
# .require would take an absolute file path, including file extention.


require_relative 'state_data'

class VirusPredictor


  # Creates the instance variables: state_of_origin, population_density, population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # Calls the other two methods. Passes in instance variables.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #Takes population density and population to determine the number of predicted deaths. Rounds down. Prints to screen.
  def predicted_deaths
    # predicted deaths is solely based on population density

    number_of_deaths = case
      when @population_density >= 200
        @population * 0.4
      when @population_density >= 50
        @population * 0.1 * (@population_density.to_i/50)
      else
        @population * 0.05
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  # Determines the speed of virus spread based on the state's population density. Prints to screen. Doesn't use state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    speed = 0

    speed += case
      when @population_density >= 200
        0.5
      when @population_density >= 150
        1
      when @population_density >= 100
        1.5
      when @population_density >= 50
        2
      else
        2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#Pseudocode:
=begin
Iterate through state data hash.
  Create a VirusPredictor object for each key in the state data hash.
  Call virus_effect method for each object.
=end

STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end



=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One hash uses the arrow => to appoint key and values, while the other one uses a colon: to denote the key and its values. The first hash's (hashy hash) keys are strings, while the second is a symbol.
What does require_relative do? How is it different from require?
Require_relative looks for the file in the relative location specified and opens it up. Require has to be an absolute location, with even the file type specified, while require_relative is just a relative location.
What are some ways to iterate through a hash?
You can iterate through a hash using .each and key value pairs. There are also enumerable methods like .map that can iterate through the hash for different results.
When refactoring virus_effects, what stood out to you about the variables, if anything?
The variables were very specific in specifying what their purpose was. The initial solution that was given took variables as parameters but never used them, only referencing the instance variables.
What concept did you most solidify in this challenge?
I think I got good practice with refactoring, and also iterating through a hash. The last bit at the end where we played around with case statements also made me feel a lot more comfortable with them too.
=end