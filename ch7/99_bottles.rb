number = 99
while number > 1
	puts number.to_s + ' bottles of beer on the wall, ' 
	puts number.to_s + ' bottles of beer!'
	puts 'Take one down and pass it around,'
	number = number - 1
	if number != 1
		puts number.to_s + ' bottles of beer on the wall!'	
	elsif number = 1
		puts number.to_s + ' bottle of beer on the wall!' 
	end	
if number == 1
	puts number.to_s + ' bottle of beer on the wall, '
	puts number.to_s + ' bottle of beer!'
	puts 'Take one down and pass it around, '
	puts 'no more bottles of beer on the wall!'
	puts 'No more bottles of beer on the wall, '
	puts 'no more bottles of beer.' 
	puts 'Go to the store and buy some more, '
	puts '99 bottles of beer on the wall!'
	end
end