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