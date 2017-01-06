def old_roman_numeral num
is = (num % 5)/1
vs = (num % 10)/5
xs = (num % 50)/10
ls = (num % 100)/50
cs = (num % 500)/100
ds = (num % 1000)/500
ms = num/1000

if num >= 1000
	num = num % 1000
end
if num >= 500
	num = num % 500
end
if num >= 100
	num = num % 100
end
if num >= 50
	num = num % 50
end
if num >= 10
	num = num % 10
end
if num >= 5
	num = num % 5
end
if num >= 1
	num = num % 1	
end		
puts (('I' * is) + ('V' * vs) + ('X' * xs) + ('L' * ls) + ('C' * cs) + ('D' * ds) + ('M' * ms)).reverse
end

old_roman_numeral 4
old_roman_numeral 25
old_roman_numeral 9
old_roman_numeral 17


