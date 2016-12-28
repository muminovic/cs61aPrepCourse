bye = 0
while bye < 3
	phrase = gets.chomp
	if phrase == 'BYE'
		bye += 1				
	elsif phrase == phrase.upcase
		puts 'NO, NOT SINCE ' + (1930 + rand(20)).to_s + '!'
		bye = 0
		elsif
			puts 'HUH! SPEAK UP, SONNY!'
			bye = 0		
	end	
if bye == 3
	end
end			
