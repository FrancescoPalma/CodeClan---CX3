def add_one(array)
  array_new = []
  for x in array
    array_new << x += 1
  end
  return array_new
end

# Another way to write the previous function
def map(array)
  array_new = []
  for x in array
    array_new << yield(x)
  end
  return array_new
end

def multiply_by_two(array)
  array_new = []
  for x in array
    array_new << x * 2
  end
  return array_new
end

# Another way to write the previous function
def map(array)
  array_new = []
  for x in array
    array_new << yield(x)
  end
  return array_new
end

def up_to_you
  yield
end

def func
  yield(1)
end

def this_block(text)
  yield(text)
end