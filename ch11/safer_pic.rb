Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |name|
	print '.' 
	new_name = if pic_number < 10 
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg" 
	end

if File.exist? new_name
	print "This name is already taken. Are you sure you want to overwrite this file?"
	reply = gets.chomp
	if reply == yes
		print "Rewriting file..."
		File.rename name, new_name
	elsif reply == no
		"Renaming process terminated."
		exit
	else
		print "Please reply 'yes' or 'no'."	
	end
end		

pic_number = pic_number + 1	
end

puts
puts 'Done!'