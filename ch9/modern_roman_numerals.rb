def modern_roman_numeral num
new = ''
#see how many I,X,C,M we have (V, L, D are in-between symbols of themselves)
#similar pattern to ORN, but this time using only 1,10,100,1000
ones = num % 10 
tens = (num % 100)/10
hundreds = (num % 1000)/100
thousands = num/1000	

new += 'M' * thousands
#take care of the special cases, 400 500 900 CD L CM 
if hundreds == 9
	new += 'CD'
elsif hundreds == 4
	new += 'CM'
elsif hundreds == 5
	new += 'D'
else #all other possible combos using code from ORN
	new += 'C' * ((num % 500)/100)	
	new += 'D' * ((num % 1000)/500)
end	

#take care of special cases, 40 50 90 XL L XC
if tens == 9
	new += 'XC'
elsif tens == 4
	new += 'XL'
elsif tens == 5
	new += 'L'
else #all other possible combos using code from ORN
	new += 'X' * ((num % 50)/10) 
	new += 'L' * ((num % 100)/50)
end

#take care of special cases 4 5 9 IV V IX
if ones == 9
	new += 'IX'
elsif ones == 4
	new += 'IV'
elsif ones == 5
	new += 'V'
else #ORN
	new += 'V' * ((num % 10)/5)
	new += 'I' * ((num % 5)/1)	
end		

puts new

end

puts modern_roman_numeral 4
puts modern_roman_numeral 49
puts modern_roman_numeral 48
puts modern_roman_numeral 254


