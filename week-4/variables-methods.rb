puts 'What is your first name?'
first = gets.chomp
puts 'What is your middle name?'
middle = gets.chomp
puts 'What is your last name?'
last = gets.chomp
puts 'Hello, ' + first + " " + middle + " " + last + '.'


puts 'What is your favorite number?'
number = gets.chomp.to_i + 1
puts 'A bigger, better number is ' + number.to_s + '.'

#How do you define a local variable? A local variable is a variable that is able to store some information, like num1 = 1 or string = '1'
#How do you define a method? A method does something. It is defined and can have parameters. The general structure is:
#def method (parameters)
# method information
#end
#What is the difference between a local variable and a method? A local variable stores information, while a method does something. A method does not actually store any information.
#How do you run a ruby program from the command line? You can type in "ruby ruby_file_name.rb".
#How do you run an RSpec file from the command line? You can type in "rspec file_name_rspec.rb"
#What was confusing about this material? What made sense? I think everything made sense for me here. I didn't have trouble with any parts of this so far.

#Return a Formatted Address: https://github.com/jonwhuang/phase-0/blob/master/week-4/address/my_solution.rb
#Defining Math Methods: https://github.com/jonwhuang/phase-0/blob/master/week-4/math/my_solution.rb