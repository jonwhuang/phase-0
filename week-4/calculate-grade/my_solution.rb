# Calculate a Grade

#I worked on this challenge with Sean Massih.


# Your Solution Below

def get_grade(grade)
  case grade
    when 90..100 then p 'A'
    when 80..89 then p 'B'
    when 70..79 then p 'C'
    when 60..69 then p 'D'
    when 0..59 then p 'F'
    else p 'You didn\'t enter an integer between 0 and 100!'
  end
end