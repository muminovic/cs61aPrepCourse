def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	while unsorted_array.length != 0
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