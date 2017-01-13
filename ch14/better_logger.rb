$nesting_depth = 0
def better_log(block_description,&block)
		puts ("   " * $nesting_depth) + "Beginning '#{block_description}'..."
		$nesting_depth += 1
		returned = block.call
		$nesting_depth = $nesting_depth - 1		
		puts ("   " * $nesting_depth) + "'#{block_description}' finished, returning: 
		#{returned}"
end

better_log 'outer block' do
	better_log 'some little block' do
		better_log 'teeny-tiny block' do
			'lots of love'
		end
	40 + 2		
	end
	better_log 'yet another block' do 
		"I love Indian food!"
	end	
	4 + 4 == 8
end	