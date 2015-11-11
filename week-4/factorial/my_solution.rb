# Factorial

# I worked on this challenge with David Ma.


# Your Solution Below
def factorial(number)

  if number == 0
    i = 1
  else
    i = number
  end

  while number > 1
    i = i * (number - 1)
    number = number - 1
  end

  return i
end