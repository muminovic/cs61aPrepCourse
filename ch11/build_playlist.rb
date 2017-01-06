def shuffle array
	shuffled = []
	while shuffled.length != array.length
		array.each do |word|
			i = rand(array.length)
			shuffled[i] = word		
		end
	end	
	if shuffled.include?(nil)
		shuffle(array)		
	else
		puts shuffled
	end		
end

songs = shuffle(Dir['muminovic/Music/iTunes/iTunesMedia/Music/*.m4a'])

File.open 'playlist.m3u', 'w' do |f|
	songs.each do |song|
		f.write song
	end
end
puts 'Playlist complete. Enjoy!'