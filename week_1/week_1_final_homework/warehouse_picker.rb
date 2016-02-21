require_relative('warehouse_functions')

# Warehouse data
@warehouse = {
  a10: 'rubber band',
  a9: 'glow stick', 
  a8: 'model car', 
  a7: 'bookmark', 
  a6: 'shovel', 
  a5: 'rubber duck', 
  a4: 'hanger', 
  a3: 'blouse', 
  a2: 'stop sign', 
  a1: 'needle', 
  c1: 'rusty nail', 
  c2: 'drill press', 
  c3: 'chalk', 
  c4: 'word search', 
  c5: 'thermometer', 
  c6: 'face wash', 
  c7: 'paint brush', 
  c8: 'candy wrapper', 
  c9: 'shoe lace', 
  c10: 'leg warmers', 
  b1: 'tire swing', 
  b2: 'sharpie', 
  b3: 'picture frame', 
  b4: 'photo album', 
  b5: 'nail filer',
  b6: 'tooth paste', 
  b7: 'bath fizzers', 
  b8: 'tissue box', 
  b9: 'deodorant', 
  b10: 'cookie jar'
}

  # When I make small apps I like to insert interactions for I am really 
  # interested in UX and I like to make the overall interaction with the 
  # program as much 'user friendly', enjoyable and readable as possible.
  puts "* The ultimate Warehouse Picker App by Palma Technologies Inc. *"
  puts ' '
  puts '* Please, when interacting with our app follow the provided instructions in order to ensure that the tasks are executed correctly, thank you. *'
  puts ' '
  puts '* Be aware that this is a prototype, we\'re currently testing this app so we would love to have a feedback from you and to rate your experience with us. Thank you! *'
  puts ' '
  puts "Welcome to our Pickers\' Store! In our store you don\'t need to search for an item! You just ask us what you need and we will tell you where to go without wasting any precious time. First, please take a look at our list of the products available in our bays."
  puts "When you feel ready, just press \'enter\'"
  puts ' '

  puts @warehouse

  gets.chomp.downcase

  puts "Wonderful! So, how can we help you?"
  puts "> For instance, type \'b5\' to print out the product which is stored in that specific bay."

  # 1) Given a bay, return the item in that bay.
  user_input_1 = gets.chomp.downcase

  puts "#{user_input_1}: #{return_product_in_bay(user_input_1, @warehouse)}"

  puts "> Or, type \'nail filer\' to print out the bay that stores the selected product."

  # 2) Given an item return the bay that it is in.
  user_input_2 = gets.chomp.downcase

  puts "#{user_input_2}: #{return_bay(user_input_2, @warehouse)}"
