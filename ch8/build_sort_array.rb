words = []
puts 'Type as many words as you want!'
answer = gets.chomp
while answer != ''
	words.push answer
	answer = gets.chomp
end
puts words.sort
