def old_roman_numeral num
is = (num % 5)/1
vs = (num % 10)/5
xs = (num % 50)/10
ls = (num % 100)/50
cs = (num % 500)/100
ds = (num % 1000)/500
ms = num/1000	
		
puts (('I' * is) + ('V' * vs) + ('X' * xs) + ('L' * ls) + ('C' * cs) + ('D' * ds) + ('M' * ms)).reverse
end

old_roman_numeral 4
old_roman_numeral 25
old_roman_numeral 9
old_roman_numeral 17


