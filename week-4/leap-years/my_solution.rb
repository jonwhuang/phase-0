# Leap Years

# I worked on this challenge by myself and with David Ma.


# Your Solution Below

def leap_year?(year)
  if (year % 4) == 0
    if (year % 400) == 0
      return true
    elsif (year % 100) == 0
      return false
    else
      return true
    end
  else
    return false
  end
end

def leap_year?(year)

  if year % 400 == 0
    then true
  elsif year % 100 == 0
    then false
  elsif year % 4 == 0
    then true
  else false
  end
end
