def roman_to_integer str
	num = 0
	numbers = {}
	numbers['I'] = 1
	numbers['V'] = 5
	numbers['X'] = 10
	numbers['L'] = 50
	numbers['C'] = 100
	numbers['D'] = 500
	numbers['M'] = 1000
	numbers['IV'] = 4
	numbers['IX'] = 9
	numbers['XL'] = 40
	numbers['XC'] = 90
	numbers['CM'] = 400
	numbers['CD'] = 900


	str = str.upcase.reverse
	previous = 0
	str.each_char do |c| 
		if not numbers.key?(c)
			puts "Invalid entry."	
			return  
		end
		symbol = numbers[c]		
		if symbol < previous
			symbol = symbol * -1
		else
			previous = symbol
		end
		num += symbol		
	end
puts num
end

puts "Enter number."
str = gets.chomp
puts roman_to_integer(str)








