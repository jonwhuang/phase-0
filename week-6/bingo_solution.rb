# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create bingo array
    #Choose one random letter from bingo array
  #Choose a random number from 1-100
  #Return letter + number as array

# Check the called column for the number called.
  #Match up called column
    #Convert letter back into array index to match up column

# If the number is in the column, replace with an 'x'
  #IF number is found inside the matched column
    #Find array index and replace the value with an 'x'

# Display a column to the console
  #For each number in the column (array)
    #IF number has one digit, print 3 spaces and number
    #ELSE number has two digits, print 2 spaces and number

# Display the board to the console (prettily)
  #Display a column to the console
  #Use puts to move to next line
  #Display next column

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    column = ['B', 'I', 'N', 'G', 'O']
    bingo_draw = [column[rand(0..4)], rand(100)]
    return bingo_draw
  end

  def check(bingo_draw)
    column = ['B', 'I', 'N', 'G', 'O']
    column_no = column.index(bingo_draw[0])


    row_no = @bingo_board.index {|row| row[column_no] == bingo_draw[1] }

    unless row_no == nil
      @bingo_board[row_no][column_no] = 'X'
    end

    print_board
  end

  def print_board
    puts '  B  I  N  G  O'
    @bingo_board.each do |row|
      row.each do |number|
        if number.to_s.split(//).length == 1
          print '  ', number
        else
          print ' ', number
        end
      end
      puts ''
    end
  end

end
=end

# Refactored Solution

class BingoBoard

  @@column = ['B', 'I', 'N', 'G', 'O']

  attr_accessor :bingo_draw

  def initialize(board)
    @bingo_board = board
  end

  def call
    @bingo_draw = [@@column[rand(0..4)], rand(100)]
  end

  def check(bingo_draw = @bingo_draw)

    column_no = @@column.index(bingo_draw[0])

    row_no = @bingo_board.index {|row| row[column_no] == bingo_draw[1] }

    @bingo_board[row_no][column_no] = 'X' if !row_no.nil?

    print_board
  end

 def print_board
    puts '   B   I   N   G   O'
    @bingo_board.each do |row|
      row.each {|number| print number.to_s.rjust(4) }
      puts ''
    end
    puts ''
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

p test1 = new_game.call
p test2 = new_game.call

new_game.check(test1)
new_game.check(test2)

new_game.check(['B', 22])
new_game.check(['O', 57])

p test3 = new_game.call
new_game.check
p test4 = new_game.call
new_game.check

new_game.bingo_draw = ['B', 25]
p new_game.bingo_draw
new_game.check



#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
I didn't think the pseudocoding was too difficult for this challenge. The outline given to us made it even easier to pseudocode. I think my pseudocode provides a good outline for myself to create the initial solution. I did think of the columns incorrectly at the beginning, thinking of each of them as a row, which led my initial solution to turn out wrong.
What are the benefits of using a class for this challenge?
Using a class allows us to define methods specifically for each function of the bingo game. Those methods can also call on the other methods, like the print_board method that I used.
How can you access coordinates in a nested array?
You can access coordinates in a nested array by using something like:
array[array_index][nested_array_index]
What methods did you use to access and modify the array?
I mainly used .index to determine the location of each bingo draw and figure out if the numbers matched. If they did, I accessed the coordinates of the nested array and replaced it with 'X'.
I also used .rjust to make the spacing even for the bingo board.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I learned about .index during this challenge. I learned how to use it to determine the index where it matched a given element, as well as when it matches the block. It's useful for determining the location of an element in an array since it returns the index number.
How did you determine what should be an instance variable versus a local variable?
The instance variables would be passed in between methods versus the local variables which only function within the method called. I used @bingo_board and @bingo_draw as instance variables so that I could call on them within that class instance. I could also use @bingo_draw in my check method but I decided not to because that way I could also input a value into check to see if it is on the bingo board.
I also used @@column as a class variable since it would remain the same throughout all bingo games.
What do you feel is most improved in your refactored solution?
I think using a class variable helped reduce a good amount of repetition. Otherwise, probably my print_board method was the most improved in the refactored solution. I was able to shorten my iteration through each row of the bingo board by a couple lines using enumerable methods.
=end