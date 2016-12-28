puts 'What is your first name?'
name = gets.chomp 
puts 'What is your middle name?'
name = name + ' ' + gets.chomp
puts 'What is your last name?'
name = name + ' ' + gets.chomp
puts 'Hello, ' + name + '!'