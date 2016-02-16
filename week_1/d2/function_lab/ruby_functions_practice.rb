def return_10
  return 10
end

def add(a, b)
  return a + b
end

add(1, 2)

def subtract(a, b)
  return a - b
end

subtract(10, 5)

def multiply(a, b)
  return a * b
end

multiply(4, 2)

def divide(a, b)
  return a / b
end

divide(10, 2)

def length_of_string( string )
  string.length
end

def join_string(a, b)
  a + b
end

def add_string_as_number(a, b)
  a.to_i + b.to_i
end

def number_to_full_month_name( num )
  months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 
            'August', 'September', 'October', 'November', 'December']
  months[num-1]
end

def number_to_short_month_name( num )
  months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 
            'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  months[num-1]
end

def volume_of_cube(side)
  side ** 3
end

def volume_of_sphere( radius )
  Rational(4, 3) * (Math::PI) * (radius**3)
end










