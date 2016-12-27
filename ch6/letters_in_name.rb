puts 'What is your first name?'
name = gets.chomp 
puts 'What is your middle name?'
name = name + ' ' + gets.chomp
puts 'What is your last name?'
name = name + ' ' + gets.chomp
#There are two spaces, 1 between first/middle names and 1 between middle/last names
#Subtracted these from the count of letters
length = name.length - 2
puts 'Did you know there are ' + length.to_s + ' letters in your name, ' + name + '?'