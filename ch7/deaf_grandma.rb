phrase = gets.chomp
while phrase != 'BYE'
	if phrase != phrase.upcase
		puts 'HUH! SPEAK UP, SONNY!'
		phrase = gets.chomp
	elsif phrase == phrase.upcase
		puts 'NO, NOT SINCE ' + (1930 + rand(20)).to_s + '!'
		phrase = gets.chomp
	end
end		
				