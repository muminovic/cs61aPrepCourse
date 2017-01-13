def log(block_description, &block)
	puts "Beginning '#{block_description}'..."
	returned = block.call
	puts "'#{block_description}' finished, returning: #{returned}"
end

log 'outer block' do
	log 'some little block' do
		10/2
	end
	log 'yet another block' do 
		"It is " + Time.new.to_s + "!"
	end	
	4 + 4 == 8
end	