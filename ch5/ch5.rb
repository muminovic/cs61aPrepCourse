#puts 'Hello there, and what\'s your name?'
#name = gets.chomp
#puts 'Your name is ' + name + '? What a lovely name!'
#puts 'Pleased to meet you, ' + name + '. :)'

puts 'What is your first name?'
name = gets.chomp 
puts 'What is your middle name?'
name = name + ' ' + gets.chomp
puts 'What is your last name?'
name = name + ' ' + gets.chomp
puts 'Hello, ' + name + '!'

puts "What is your favorite number?"
num = gets.chomp.to_i + 1
puts num.to_s + ' is a bigger, better favorite number!'