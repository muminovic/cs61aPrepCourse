def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length == 0	
		return sorted_array
	else	
		small = unsorted_array.pop
		stillUnsorted = []
		unsorted_array.each do |word|
			if word < small
				stillUnsorted.push small
				small = word
			elsif small < word
				stillUnsorted.push word
			end	
		sorted_array.push small		
		recursive_sort(stillUnsorted, sorted_array)
		end
	end		
end	

words = []
puts 'Type as many words as you want!'
answer = gets.chomp
while answer != ''
	words.push answer
	answer = gets.chomp
end
puts sort(words)
