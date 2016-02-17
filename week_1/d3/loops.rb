# for loop
my_array = [ 1, 2, 3, 4, 5 ]
for i in my_array
  puts i
end

# for loop in Hash
teachers = {
  'Tony' => 42,
  'Kat' => 19,
  'Harvey' => 37,
  'Rick' => 12,
  'Val' => 25
}

for key, value in teachers
  puts "#{key}: #{value} years old"
end

# while loop
i = 0
my_num = 5
while i < my_num do
  puts "number is #{i}"
  i += 1
end

# until loop
x = 0
until x == 10
  puts x += 1
end

# quick game with until loop
my_num = 5
puts "what number am i thinking of?"
value = gets.to_i

until value == my_num
  print "nope... Try again:"
  value = gets.to_i
end

puts "yes!"

# Hash + for loop
football_players = {
  'Samir Handanovich' => 'Goalkeeper in Inter',
  'Joao Miranda' => 'Defender in Inter',
  'Andres Iniesta' => 'Midfielder in Barça',
  'Leo Messi' => 'Forward in Barça'
}

for key, value in football_players
  puts "#{key} is a #{value}"
end

# infinite loop (Ctrl + c) || to break an ongoing loop use this code snippet
loop do
  print 'type something funny:'
  line = gets.chomp
  break if line.downcase == 'q'
  puts "you type: #{line}"
end











