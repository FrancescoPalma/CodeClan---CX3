def add_array_lengths(prices, costs)
  return (prices + costs).length
end 

def return_sum(data)
  sum = 0
  data.each do
    |x| sum += x
  end
  return sum
end

def find_item(item, array)
  array.include?(item)
end

def return_tony
  teacher_wallets = {
    'Tony' => 12,
    'Kat'  => 10,
    'Val'  => 1356,
    'Rick' => 1
  }
  return teacher_wallets.keys[0]
end

def all_capitals(hash)
  capitals = []
  hash.each do |key, value|
    capitals << value[:capital]
  end
  return capitals
end

