# Robot Settings

def robot ( name, platform, programming_language, framework, task )
  puts "Robot Name: #{name}"
  puts "Platform: #{platform}"
  puts "Programming Language used: #{programming_language}"
  puts "Framework used: #{framework}"
  puts "Main task: #{task}"
end

robot("Gentleman", "Arduino", "Ruby", "Artoo", "To say Hello to people who greet it by saying, \'Hi, Gentleman\'.")

# Interaction with User

puts 'Would you like to have a nice chat with Gentleman?'

user_answer = gets.chomp
if (user_answer == 'yes')  
  puts 'All Right! What\'s your name?'
elsif (user_answer == 'no')
  puts 'No Worries, have a nice day!'
  abort('End of the program :)')
else 
  puts 'I don\'t understand your answer. I am a robot which has been programmed to accept only specific answers. Contact my creator for more Info. Wish you a nice day anyway!'
end

user_name = gets.chomp
puts "Oh, Hello #{user_name}. What a Wonderful name! What would you like to converse about?"
puts ">>>> A tip for you: this Robot is still in Beta, please be patient. Your answer should be \'politics\', \'food\' or \'just say hello?\'"

user_topic = gets.chomp
  if (user_topic == 'politics')
    puts "I am sorry, I fear I am not an expert on this matter and I couldn\'t add any knowledge nor value to our conversation."
  elsif (user_topic == "food")
    puts "I don\'t really need to eat, therefore I have very little knowledge of food in general. Sorry for the inconvenience." 
  elsif (user_topic == 'just say hello?')
    puts "Of course. I was meant to say hello to people!"
  else 
    puts "I\'m terribly sorry. I don\'t understand your answer. I am a robot which has been programmed to accept only specific answers. Contact my creator for more Info. Wish you a nice day anyway!"
  end



























