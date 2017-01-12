#shuffle
class Array
	def shuffle 
	shuffled = []
	length = self.length
	while shuffled.length != length
		index = rand(self.length)
		shuffled.push(self[index])
		self.delete_at(index)
	end
	return shuffled
	end		
end

#factorial
class Integer
	def factorial
		if self < 0
			return 'You can\'t take the factorial of a negative number!' 
		end
		if self <= 1 
			 return 1
		else
    		return(self * (self - 1).factorial)
		end
 	end
 end	

#roman numeral
class Integer
	def to_roman
		new = ''
		ones = self % 10 
		tens = (self % 100)/10
		hundreds = (self % 1000)/100
		thousands = self/1000		
		new += 'M' * thousands

		if hundreds == 9
			new += 'CD'
		elsif hundreds == 4
			new += 'CM'
		elsif hundreds == 5
			new += 'D'
		else 
			new += 'C' * ((self % 500)/100)	
			new += 'D' * ((self % 1000)/500)
		end

		if tens == 9
			new += 'XC'
		elsif tens == 4
			new += 'XL'
		elsif tens == 5
			new += 'L'
		else 
			new += 'X' * ((self % 50)/10) 
			new += 'L' * ((self % 100)/50)
		end

		if ones == 9
			new += 'IX'
		elsif ones == 4
			new += 'IV'
		elsif ones == 5
			new += 'V'
		else 
			new += 'V' * ((self % 10)/5)
			new += 'I' * ((self % 5)/1)	
		end
		return new

	end
end	

puts 4.factorial
puts 4.to_roman
puts 17.to_roman
array = ['1', '2', '3', '4']
puts array.shuffle

