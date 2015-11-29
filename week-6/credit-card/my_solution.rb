# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with KB DiAngelo / Jon Huange.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: true or false
# Steps:
=begin
Step 1:
Break the input string into an array, remove the spaces
Double every other digit starting from the first digit

Step 2:
Break apart doubled digits (10 -> 1 & 0) into two array values
Push to new array
Sum up all values in the new array

Step 3:
check_card method
IF sum is a multiple of 10, return true
ELSE return false

=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard

  def initialize(card_no)

    if card_no.to_s.length != 16
      raise ArgumentError.new("Invalid credit card number.")
    end

    @card_no = card_no

  end

  def double_digit


    card_array = @card_no.to_s.split(//)

    card_array.each_with_index{|digit, index| index.even? ? card_array[index] = (digit.to_i * 2).to_s : card_array[index] = digit}

    return card_array

  end

  def sum_digits(array)
    new_array = []
    array.each do |number|
      if number.length == 1
        new_array << number.to_i
      else
        mini_array = number.to_s.split(//)
        mini_array.each {|digit| new_array << digit.to_i}
      end
    end

    return new_array.reduce(:+)

  end


  def check_card
    sum_digits(double_digit) % 10 == 0 ? true : false
  end

end
=end

# Refactored Solution

class CreditCard

  def initialize(card_no)

    raise ArgumentError.new("Invalid credit card number.") if card_no.to_s.length != 16

    @card_no = card_no

  end


  def double_digit


    card_array = @card_no.to_s.split(//)

    card_array.each_with_index{|digit, index| card_array[index] = (digit.to_i * 2).to_s if index.even?}

    return card_array

  end



  def sum_digits(array)

    array.map! {|number| number.split(//)}.flatten!
    array.map! {|number| number.to_i}
    return array.reduce(:+)

  end


  def check_card
    sum_digits(double_digit) % 10 == 0 ? true : false
  end

end

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
Refactoring our sum_digits method was the most difficult part of the challenge for us. It took us a while to find a way to shorten our initial solution.
What new methods did you find to help you when you refactored?
We used #each_with_index, #map, #flatten, and #reduce for our solution. They definitely helped simplify our code by a lot.
What concepts or learnings were you able to solidify in this challenge?
Definitely the refactoring part. Our pseudocode wasn't too great this time, and we had to come up with a lot of new things during our initial solution. This resulted in a lot of excess code that we were able to work on simplifying during the refactoring, and I know we were both very satisfied with how our refactored solution turned out.
=end