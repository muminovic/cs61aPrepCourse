class OrangeTree
	def initialize
		@height = 0
		@age = 0
		@orange_count = 0
	end	

	def height #in feet
		if @height == 1
			puts "The tree is #{@height} foot tall!"
		else
			puts "The tree is #{@height} feet tall!"					
		end	
	end	

	def one_year_passes	
			@height = @height + 1
			@age = @age + 1
			@orange_count = 0
	end	

	def count_the_oranges
		@orange_count
	end

	def pick_an_orange
		if @orange_count > 0
			@orange_count = @orange_count - 1
			puts "Mmmm, delicious!"
		else
			puts "Uh-oh! There are no more oranges left to pick!"
		end
	end	

	def dead?
		@age == 15
		puts "Oh, no! The tree has died. :( "				
	end	

	def fruit
		if @age < 3
			@orange_count = 0
		elsif @age >= 3 && @age < 15
			@orange_count = @orange_count + (@age * 2) 
		end	
	end	
end			