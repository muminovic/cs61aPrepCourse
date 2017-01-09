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

def music_shuffle array
	mix1 = []
	mix2 = []
	3.times do
		shuffle(array)
	end	
	for i in range (0, (array.length/2))
		mix1.push array[i]
	end	
	for i in range (((array.length/2) + 1, array.length)	
		mix2.push array[i]
	end	
	shuffle(mix1)
	shuffle(mix2)
	mix1.each do |item|
		mix2.push item
	end
end


