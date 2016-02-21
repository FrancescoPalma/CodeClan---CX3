# 1
def return_product_in_bay(user_input, warehouse)
  user_input = user_input.to_sym
    if warehouse.key?(user_input)
      return warehouse[user_input]
    else
      print 'We couldn\'t find any bay, sorry for the inconvenience.'
    end
end

# 2
def return_bay(user_input, warehouse)
  user_input = user_input.downcase
    if warehouse
      return warehouse.key(user_input).to_s
    else
      return 'We couldn\'t find any product, sorry for the inconvenience.'
    end
end

# 3
def return_list_products(bays, warehouse)
    products = []
    bays.each do |bay|
      products << warehouse[bay]
    end
    return products
end

# 4
def return_list_bays(products, warehouse)
  bays = []
  products.each do |product|
    bays << warehouse.key(product)
  end
  return bays
end
