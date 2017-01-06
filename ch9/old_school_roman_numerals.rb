def old_roman_numeral num
is = 0
vs = 0
xs = 0
ls = 0
cs = 0
ds = 0
ms = 0
if num >= 1000
	ms = num/1000
	num = num % 1000
end
if num >= 500
	ds = num/500
	num = num % 500
end
if num >= 100
	cs = num/100		
	num = num % 100
end
if num >= 50
	ls = num/50		
	num = num % 50
end
if num >= 10
	xs = num/10		
	num = num % 10
end
if num >= 5
	vs = num/5		
	num = num % 5
end
if num >= 1
	is = num/1		
	num = num % 1	
	end		
puts (('I' * is) + ('V' * vs) + ('X' * xs) + ('L' * ls) + ('C' * cs) + ('D' * ds) + ('M' * ms)).reverse
end

old_roman_numeral 4
old_roman_numeral 2000
old_roman_numeral 9
old_roman_numeral 17
old_roman_numeral 433
old_roman_numeral 546
old_roman_numeral 231

