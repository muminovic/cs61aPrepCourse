def shuffle array
	shuffled = []
	length = array.length
	while shuffled.length != length
		index = rand(array.length)
		shuffled.push(array[index])
		array.delete_at(index)
	end
	return shuffled
end	

def music_shuffle array
	mix1 = []
	mix2 = []
	3.times do
		shuf = shuffle(array)
	end	
	for i in range (0, (array.length/2))
		mix1.push shuf[i]
	end	
	for i in range (((array.length/2) + 1, array.length)	
		mix2.push shuf[i]
	end	
	shuffle(mix1)
	shuffle(mix2)
	mix1.each do |item|
		mix2.push item
	end
end


