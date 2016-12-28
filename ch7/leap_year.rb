puts 'Please choose a starting year.'
start = gets.chomp
puts 'Please choose an ending year.'
finish = gets.chomp
n = start.to_i
while n <= finish.to_i
	if n % 400 == 0
		puts n
		n += 1
	elsif n % 100 != 0 && n % 4 == 0
		puts n
		n +=1
	end
n +=1		
end	

			
