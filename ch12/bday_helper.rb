filename = 'bday.txt'
File.open filename, 'w' do |f|
	bdays = {}
	filename.each_line do |line|
		line = line.chomp
		name_ends = 0
		while name_ends < (line.length - 5) #We know this is where 2nd comma will be
			if line[name_ends] != ','
				name_ends += 1
			end
		name = line[0...(name_ends - 1)] #Don't include the comma in the name	
		end
		birthday = line[-11..-1]
		bdays[name] = birthday
	end

puts "Enter name."
name = gets.chomp
birthday = bdays[name]

puts "#{name} was born on #{birthday}."
end