# Analyze the Errors

# I worked on this challenge by myself.
# I spent 45 minutes on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# Line 170
# 3. What is the type of error message?
# Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# It expected an end at the end-of-input.
# 5. Where is the error in the code?
# Line 16
# 6. Why did the interpreter give you this error?
# The while statement is missing an end

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# Line 35
# 2. What is the type of error message?
# Name error
# 3. What additional information does the interpreter provide about this type of error?
# The local variable or object is undefined
# 4. Where is the error in the code?
# south_park is not defined and needs something to be assigned to it
# 5. Why did the interpreter give you this error?
# south_park was not assigned anything and was called as a local variable

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# Line 50
# 2. What is the type of error message?
# No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# Cartman is an undefined method
# 4. Where is the error in the code?
# The cartman method is called without being defined as a method
# 5. Why did the interpreter give you this error?
# Cartman needs to be defined as a method. with def cartman() and end on the next line

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line 65
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# There is 1 argument when there should be none
# 4. Where is the error in the code?
# It is on line 69 when cartmans_phrase method is called
# 5. Why did the interpreter give you this error?
# The method cartsman_phrase is defined with no parameter, but when it is called, it has one argument in it. Either we have to add one parameter to the method, or take out the argument.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# Line 84
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# There are no arguments given when there should be one.
# 4. Where is the error in the code?
# Line 88 when cartman_says is called
# 5. Why did the interpreter give you this error?
# The method cartman_says is defined with one parameter, but is called on line 88 without an argument. We have to take off the parameter, or add an argument



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 105
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# There is only one argument given when it was expecting two.
# 4. Where is the error in the code?
# Line 109
# 5. Why did the interpreter give you this error?
# When the method is called, there is only one argument given when it was expecting two. Either change it to only one parameter, or add another argument.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 124
# 2. What is the type of error message?
# Type error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be converted into a fixed number.
# 4. Where is the error in the code?
# The string should come first and then the number should come after.
# 5. Why did the interpreter give you this error?
# Ruby is trying to make "Respect my authoritay!" copies of 5. If 5 and the string were swapped, then it would make 5 copies of "Respect my authoritay!"

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 139
# 2. What is the type of error message?
# Zero division error
# 3. What additional information does the interpreter provide about this type of error?
# It says something is divided by 0
# 4. Where is the error in the code?
# The number 20 is being divided by 0.
# 5. Why did the interpreter give you this error?
# You cannot divide a number by 0. If we switched the 0 and the 20 so it became 0/20, there wouldn't be an error.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 155
# 2. What is the type of error message?
# Load error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that it cannot load the file required.
# 4. Where is the error in the code?
# The file cartsmans_essay.md does not exist in the directory.
# 5. Why did the interpreter give you this error?
# If we added cartsman_essay.md to the directory, it would not show up as an error. Because the file is required, it must be in the directory or will show up as an error.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
# I think that the first error was the most confusing for me. Because it kept pointing to "line 170" because the method was never closed off, I was confused why it was pointing all the way at the bottom.
#How did you figure out what the issue with the error was?
# The type of error message definitely helped with figuring out what the issues were because I would focus on that particular problem to figure out how to fix it.
#Were you able to determine why each error message happened based on the code?
#Yes, especially with the pointers of the errors.
#When you encounter errors in your future code, what process will you follow to help you debug?
#I will have to look at the type of error, see where the error is located, and also read what the interpreter was expecting to figure out how to debug the problem.