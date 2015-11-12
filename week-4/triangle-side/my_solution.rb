# I worked on this challenge with Sean Massih and with (later) David Ma.


# Your Solution Below

def valid_triangle?(a, b, c)
  triangle = [a, b, c]
  if a > b
    triangle[0] = b
    triangle[1] = a
  end
  if triangle[1] > triangle[2]
    triangle[2] = triangle[1]
    triangle[1] = c
  end
  if triangle[0] > triangle[1]
    temp = triangle[0]
    triangle[0] = triangle[1]
    triangle[1] = temp
  end

  if (triangle[0] + triangle[1]) > triangle[2]
    return true
  else
    return false
  end

end

def valid_triangle?(a, b, c)
  if a < b + c && b < c + a && c < a + b
    then true
  else false
  end
end


