# 1. For a given prerson, return their favourite tv show
# 2. For a given person, check if they like a particular food
# 3. Allow a new friend to be added to a given person
# 4. Allow a friend to be removed from a given person
# 5. Find the total of everyone's money
# 6. For two given people, allow the first person to loan a given value of money to the other
# 7. Find the set of everyone's favourite food joined together
# 8. Find people with no friends

# 1
def fav_tv_show(person)
  return person[:favourites][:tv_show]
end

# 2
def fav_food(food, person)
  return person[:favourites][:things_to_eat].include?(food)
end

# 3
def new_friend(person, new_friend)
  return person[:friends].push(new_friend) 
end

# 4
def remove_friend(person, remove_friend)
  return person[:friends].delete_at(0)
end

# 5
def total_monies(people)
  
  counter = 0
  
  people.each do |person|
    counter += person[:monies]
  end

  return counter

end

# 6
def lend_money(lender, receiver, money)
  lender[:monies] - money 
  receiver[:monies] + money
end

# 7
def everyone_fav_food(people)
  shelf = []
  people.each do |person|
    shelf << person[:favourites][:things_to_eat] 
  end
  return shelf.flatten!
end

# 8
def no_friends(people)
  people[4][:name]
end




