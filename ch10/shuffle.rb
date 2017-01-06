def shuffle array
	shuffled = []
	while shuffled.length != array.length
		array.each do |word|
			i = rand(array.length)
			shuffled[i] = word		
		end
	end	
	if shuffled.include?(nil)
		shuffle(array)		
	else
		puts shuffled
	end		
end

array = ['1', '2', '3', '4']
shuffle(array)
