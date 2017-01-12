class Die
	def initialize
		roll
	end
	def roll
		@number_showing = 1 + rand(6)
	end
	def showing
		@number_showing
	end	
	def cheat
		puts 'Which side of the die would you like to show?'
		answer = gets.chomp.to_i
		while answer > 6 
			puts 'Please choose a value between 1 and 6.'
			answer = gets.chomp.to_i
		end	
		if answer >= 1 && answer <= 6
			@number_showing = answer
		end	
	end
end

puts Die.new.showing
puts Die.new.cheat