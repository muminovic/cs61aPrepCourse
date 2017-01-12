def shuffle array
	shuffled = []
	length = array.length
	while shuffled.length != length
		index = rand(array.length)
		shuffled.push(array[index])
		array.delete_at(index)
	end
	puts shuffled
end		

array = ['1', '2', '3', '4']
shuffle(array)
