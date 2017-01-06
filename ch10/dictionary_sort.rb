
def sort some_array
	dictionary_sort some_array, []
end

def dictionary_sort unsorted_array, sorted_array
	if unsorted_array.length == 0	
		return sorted_array
	else	
		small = unsorted_array.pop
		stillUnsorted = []
		unsorted_array.each do |word|
			if word.downcase < small.downcase 
				stillUnsorted.push small
				small = word
			elsif small.downcase < word.downcase 
				stillUnsorted.push word
			end	
		end	
		sorted_array.push small		
		return dictionary_sort(stillUnsorted, sorted_array)
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